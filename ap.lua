local version = "v1.1"

-- Added Debug

setfpscap(240)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Vim = game:GetService("VirtualInputManager")
local CollectionService = game:GetService("CollectionService")

local ballFolder = Workspace.Balls
local trainingFolder = Workspace.TrainingBalls

local pressCooldown = 0
local lastPressTime = {}
local isKeyPressed = {}

local configHighPing = {
    value1 = 0.185,
    value2 = 0.005,
    value3 = 0.01,
    value4 = 0.2
}

local configLowPing = {
    value1 = 0.105,
    value2 = 0.004,
    value3 = 0.0082,
    value4 = 0.22
}

local currentConfig = nil
local lastConfigUpdate = tick()
local configUpdateInterval = 0.1

local minDistance = 5.5
local lastKnownPositions = {}

local debug = true  -- Set this to true to enable debug output

local function printValues()
    print("Current Version: " .. version)
    print("Current Config:")
    print("-----------------------------------------")
    print("Base Threshold: " .. currentConfig.value1)
    print("Velocity Factor: " .. currentConfig.value2)
    print("Distance Factor: " .. currentConfig.value3)
    print("math.max: " .. currentConfig.value4)
    print("-----------------------------------------")
end

local function getPlayerPing()
    local stats = game:GetService("Stats")
    local networkStats = stats.Network
    return networkStats.ServerStatsItem["Data Ping"]:GetValue()
end

local function updateConfigBasedOnPing(ping)
    if tick() - lastConfigUpdate > configUpdateInterval then
        if ping > 100 then
            currentConfig = configHighPing
        else
            currentConfig = configLowPing
        end
        lastConfigUpdate = tick()
    end
end

currentConfig = (function()
    local initialPing = getPlayerPing()
    if initialPing > 100 then
        return configHighPing
    else
        return configLowPing
    end
end)()

local function resolveVelocity(ball, ping)
    local currentPosition = ball.Position
    local currentVelocity = ball.Velocity
    local rtt = ping / 1000
    local predictedPosition = currentPosition + currentVelocity * rtt
    return predictedPosition
end

local function calculatePredictionTime(ball, player)
    local rootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    
    if rootPart then
        local ping = getPlayerPing()
        updateConfigBasedOnPing(ping)
       
        local predictedPosition = resolveVelocity(ball, ping)
        local relativePosition = predictedPosition - rootPart.Position
        local velocity = ball.Velocity + rootPart.Velocity
        local a = ball.Size.magnitude / 2
        local b = relativePosition.magnitude
        local c = math.sqrt(a * a + b * b)

        return (c - a) / velocity.magnitude
    end
    
    return math.huge
end

local function calculateThreshold(ball, player)
    local rootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return math.huge end

    local ping = getPlayerPing() / 1000
    updateConfigBasedOnPing(ping * 1000)
    local distance = (ball.Position - rootPart.Position).Magnitude

    local pingCompensation = ping * 2.2
    local baseThreshold = currentConfig.value1 + pingCompensation

    local velocityFactor = math.pow(ball.Velocity.magnitude, 0.5) * currentConfig.value2
    local distanceFactor = distance * currentConfig.value3

    return math.max(baseThreshold, currentConfig.value4 - velocityFactor - distanceFactor)
end

local function checkProximityToPlayer()
    local playerPosition = getPlayerPosition()

    for _, ball in ipairs(getAllBalls()) do
        if ball and ball.Position then
            local ballDistance = (ball.Position - playerPosition).Magnitude

            if debug then
                print("Ball Distance (in studs): " .. ballDistance)
            end

            if ballDistance > minDistance then
                continue
            end

            local predictedPosition = ball.Position + ball.Velocity * 0.3

            if not isKeyPressed[ball] and (tick() - (lastPressTime[ball] or 0) > pressCooldown) then
                Vim:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
                task.wait()
                Vim:SendKeyEvent(false, Enum.KeyCode.F, false, nil)
                lastPressTime[ball] = tick()
                isKeyPressed[ball] = true
            end
        end
    end
end

local function getPlayerPosition()
    local player = Players.LocalPlayer
    if player and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            return humanoidRootPart.Position
        end
    end
    return Vector3.new(0, 0, 0)
end

local function getAllBalls()
    return CollectionService:GetTagged("Ball")
end

printValues()
RunService.Heartbeat:Connect(checkProximityToPlayer)
