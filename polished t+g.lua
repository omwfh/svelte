setfpscap(240)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Vim = game:GetService("VirtualInputManager")
local ballFolder = Workspace.Balls
local trainingFolder = Workspace.TrainingBalls

local lastBallPressed, isKeyPressed = nil, false

local value1 = 0.265
local value2 = 0.01
local value3 = 0.03
local value4 = 0.5

local function printvalues()
    task.wait()
    print("baseThreshold: " .. value1)
    print("velocityFactor: " .. value2)
    print("distanceFactor: " .. value3)
    print("math.max: " .. value4)
end

local function getPlayerPing()
    local stats = game:GetService("Stats")
    local networkStats = stats.Network
    return networkStats.ServerStatsItem["Data Ping"]:GetValue()
end

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

    local distance = (ball.Position - rootPart.Position).Magnitude
    local closeCombatFactor = 1 / math.max(distance, 1)

    local baseThreshold = value1
    local velocityFactor = ball.Velocity.magnitude * value2
    local distanceFactor = distance * value3 * closeCombatFactor

    return math.max(baseThreshold, value4 - velocityFactor - distanceFactor)
end

local function checkProximityToPlayer(ball, player)
    local predictionTime = calculatePredictionTime(ball, player)
    local realBallAttribute = ball:GetAttribute("realBall")
    local target = ball:GetAttribute("target")
    local ballSpeedThreshold = calculateThreshold(ball, player)
    
    if predictionTime <= ballSpeedThreshold and realBallAttribute and target == player.Name and not isKeyPressed then
        Vim:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
        task.wait()
        Vim:SendKeyEvent(false, Enum.KeyCode.F, false, nil)
        
        lastBallPressed = ball
        isKeyPressed = true
    elseif lastBallPressed == ball and (predictionTime > ballSpeedThreshold or not realBallAttribute or target ~= player.Name) then
        isKeyPressed = false
    end
end

local function getAllBalls()
    local allBalls = {}
   
    for _, obj in ipairs(Workspace:GetChildren()) do
        if obj == ballFolder then
            for _, ball in ipairs(ballFolder:GetChildren()) do
                table.insert(allBalls, ball)
            end
        elseif obj == trainingFolder then
            for _, trainingBall in ipairs(trainingFolder:GetChildren()) do
                table.insert(allBalls, trainingBall)
            end
        end
    end
    
    return allBalls
end

local function checkBallsProximity()
    local player = Players.LocalPlayer
    
    if player and player.Character then
        for _, ball in ipairs(getAllBalls()) do
            checkProximityToPlayer(ball, player)
        end
    end
end

printvalues()
RunService.RenderStepped:Connect(checkBallsProximity)