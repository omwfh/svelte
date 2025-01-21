setfpscap(240)

local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Vim = game:GetService("VirtualInputManager")
local StarterGui = game:GetService("StarterGui")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings
local ballFolder = Workspace.Balls
local trainingFolder = Workspace.TrainingBalls

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
end

local pressCooldown = 0
local lastPressTime = {}
local isKeyPressed = {}
local Spring = {}
Spring.__index = Spring

local pi = math.pi;
local abs = math.abs;
local clamp = math.clamp;
local exp = math.exp;
local rad = math.rad;
local sign = math.sign;
local sqrt = math.sqrt;
local tan = math.tan;

local configHighPing = {
    value1 = 0.118,
    value2 = 0.003,
    value3 = 0.012,
    value4 = 0.22
}

local configLowPing = {
    value1 = 0.109,
    value2 = 0.0067,
    value3 = 0.0113,
    value4 = 0.28
}

local currentConfig = nil
local lastConfigUpdate = tick()
local configUpdateInterval = 0.1

local AFK_ENABLED = false
local AUTOPARRY_ENABLED = true
local MASTER_ENABLED = true

local MOVE_DURATION = 1.5
local MOVE_PAUSE = 0.5
local CAMERA_MOVE_INTERVAL = 1
local TARGET_SWITCH_INTERVAL = 5
local PATH_RECALCULATE_INTERVAL = 2
local IDLE_CHANCE = 0.3
local MIN_IDLE_DURATION = 2
local MAX_IDLE_DURATION = 5

local MOVEMENT_KEYS = { Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D }
local lastCameraMove = 0
local lastTargetSwitch = 0
local lastActionTime = 0
local currentTargetPlayer = nil

local FFlagUserExitFreecamBreaksWithShiftlock

local MOVE_PATTERNS = {
    spin = {Enum.KeyCode.A, Enum.KeyCode.W, Enum.KeyCode.D, Enum.KeyCode.S},
    zigzag = {Enum.KeyCode.A, Enum.KeyCode.D},
}

local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local FREECAM_MACRO_KB = {Enum.KeyCode.P}

local NAV_GAIN = Vector3.new(1, 1, 1) * 64
local PAN_GAIN = Vector2.new(0.75, 1) * 8
local FOV_GAIN = 300

local PITCH_LIMIT = rad(90)

local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0

local movePatternIndex = 1
local lastMovePatternTime = 0
local MOVE_PATTERN_INTERVAL = 0.5

local PlayerState = {}
local mouseBehavior
local mouseIconEnabled
local cameraType
local cameraFocus
local cameraCFrame
local cameraFieldOfView
local screenGuis = {}

local coreGuis = {
    Backpack = true,
    Chat = true,
    Health = true,
    PlayerList = true,
}

local setCores = {
    BadgesNotificationsActive = true,
    PointsNotificationsActive = true,
}

local Camera = Workspace.CurrentCamera
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    local newCamera = Workspace.CurrentCamera
    if newCamera then
        Camera = newCamera
    end
end)

local success, result = pcall(function()
    return UserSettings():IsUserFeatureEnabled("UserExitFreecamBreaksWithShiftlock")
end)
FFlagUserExitFreecamBreaksWithShiftlock = success and result

function Spring.new(freq, pos)
    local self = setmetatable({}, Spring)
    self.f = freq
    self.p = pos
    self.v = pos * 0
    return self
end

function Spring:Update(dt, goal)
    local f = self.f * 2 * pi
    local p0 = self.p
    local v0 = self.v

    local offset = goal - p0
    local decay = exp(-f * dt)

    local p1 = goal + (v0 * dt - offset * (f * dt + 1)) * decay
    local v1 = (f * dt * (offset * f - v0) + v0) * decay

    self.p = p1
    self.v = v1

    return p1
end

function Spring:Reset(pos)
    self.p = pos
    self.v = pos * 0
end

local function tweenTrajectoryDot(dot, startPos, endPos)
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local goal = {Position = endPos}
    local tween = TweenService:Create(dot, tweenInfo, goal)
    tween:Play()
    tween.Completed:Connect(function()
        dot:Destroy()
    end)
end

local function createTrajectoryDot(startPos, endPos)
    local dot = Instance.new("Part")
    dot.Size = Vector3.new(0.3, 0.3, 0.3)
    dot.Shape = Enum.PartType.Ball
    dot.Anchored = true
    dot.CanCollide = false
    dot.Material = Enum.Material.Neon
    dot.BrickColor = BrickColor.new("Bright yellow")
    dot.Position = startPos
    dot.Parent = Workspace
    tweenTrajectoryDot(dot, startPos, endPos)
end

local function visualizeBallTrajectory(ball)
    local currentPos = ball.Position
    local predictedPos = currentPos + ball.Velocity * 0.1
    createTrajectoryDot(currentPos, predictedPos)
end

local function CheckMouseLockAvailability()
    local devAllowsMouseLock = Players.LocalPlayer.DevEnableMouseLock
    local devMovementModeIsScriptable = Players.LocalPlayer.DevComputerMovementMode == Enum.DevComputerMovementMode.Scriptable
    local userHasMouseLockModeEnabled = GameSettings.ControlMode == Enum.ControlMode.MouseLockSwitch
    local userHasClickToMoveEnabled = GameSettings.ComputerMovementMode == Enum.ComputerMovementMode.ClickToMove
    return devAllowsMouseLock and userHasMouseLockModeEnabled and not userHasClickToMoveEnabled and not devMovementModeIsScriptable
end

local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)

function PlayerState.Push()
    for name in pairs(coreGuis) do
        coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
    end
    for name in pairs(setCores) do
        setCores[name] = StarterGui:GetCore(name)
        StarterGui:SetCore(name, false)
    end
    local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if playergui then
        for _, gui in pairs(playergui:GetChildren()) do
            if gui:IsA("ScreenGui") and gui.Enabled then
                screenGuis[#screenGuis + 1] = gui
                gui.Enabled = false
            end
        end
    end

    cameraFieldOfView = Camera.FieldOfView
    Camera.FieldOfView = 70

    cameraType = Camera.CameraType
    Camera.CameraType = Enum.CameraType.Custom

    cameraCFrame = Camera.CFrame
    cameraFocus = Camera.Focus

    mouseIconEnabled = UserInputService.MouseIconEnabled
    UserInputService.MouseIconEnabled = false

    mouseBehavior = FFlagUserExitFreecamBreaksWithShiftlock and CheckMouseLockAvailability() and Enum.MouseBehavior.Default or UserInputService.MouseBehavior
    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
end

function PlayerState.Pop()
    for name, isEnabled in pairs(coreGuis) do
        StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
    end
    for name, isEnabled in pairs(setCores) do
        StarterGui:SetCore(name, isEnabled)
    end
    for _, gui in pairs(screenGuis) do
        if gui.Parent then
            gui.Enabled = true
        end
    end

    Camera.FieldOfView = cameraFieldOfView
    cameraFieldOfView = nil

    Camera.CameraType = cameraType
    cameraType = nil

    Camera.CFrame = cameraCFrame
    cameraCFrame = nil

    Camera.Focus = cameraFocus
    cameraFocus = nil

    UserInputService.MouseIconEnabled = mouseIconEnabled
    mouseIconEnabled = nil

    UserInputService.MouseBehavior = mouseBehavior
    mouseBehavior = nil
end

local function StartFreecam()
    local cameraCFrame = Camera.CFrame
    cameraRot = Vector2.new(cameraCFrame:ToOrientation())
    cameraPos = cameraCFrame.Position
    cameraFov = Camera.FieldOfView

    velSpring:Reset(Vector3.new())
    panSpring:Reset(Vector2.new())
    fovSpring:Reset(0)

    PlayerState.Push()
    RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
    Input.StartCapture()
end

local function StopFreecam()
    Input.StopCapture()
    RunService:UnbindFromRenderStep("Freecam")
    PlayerState.Pop()
end

local enabled = false

local function toggleFreeCam()
    if enabled then
        StopFreecam()
    else
        StartFreecam()
    end
    enabled = not enabled
end

local function CheckMacro(macro)
    for i = 1, #macro - 1 do
        if not UserInputService:IsKeyDown(macro[i]) then
            return
        end
    end
    ToggleFreecam()
end

local function HandleActivationInput(action, state, input)
    if state == Enum.UserInputState.Begin then
        if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
            CheckMacro(FREECAM_MACRO_KB)
        end
    end
    return Enum.ContextActionResult.Pass
end

local function performMovePattern(pattern)
    local key = pattern[movePatternIndex]
    Vim:SendKeyEvent(true, key, false, nil)
    task.wait(0.2)
    Vim:SendKeyEvent(false, key, false, nil)
    movePatternIndex = movePatternIndex % #pattern + 1
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.T then
        if MASTER_ENABLED then
            AFK_ENABLED = not AFK_ENABLED
            print("AFK Mode: " .. tostring(AFK_ENABLED))
        end
    elseif input.KeyCode == Enum.KeyCode.Y then
        if MASTER_ENABLED then
            AUTOPARRY_ENABLED = not AUTOPARRY_ENABLED
            print("Autoparry Mode: " .. tostring(AUTOPARRY_ENABLED))
        end
    elseif input.KeyCode == Enum.KeyCode.U then
        MASTER_ENABLED = not MASTER_ENABLED
        AFK_ENABLED = false
        AUTOPARRY_ENABLED = false
        print("Master Toggle: " .. tostring(MASTER_ENABLED))
    end
end)

local function createMobileUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

    local afkButton = Instance.new("TextButton")
    afkButton.Size = UDim2.new(0.2, 0, 0.1, 0)
    afkButton.Position = UDim2.new(0.1, 0, 0.8, 0)
    afkButton.Text = "Toggle AFK"
    afkButton.Parent = screenGui

    local autoparryButton = Instance.new("TextButton")
    autoparryButton.Size = UDim2.new(0.2, 0, 0.1, 0)
    autoparryButton.Position = UDim2.new(0.7, 0, 0.8, 0)
    autoparryButton.Text = "Toggle Autoparry"
    autoparryButton.Parent = screenGui

    afkButton.MouseButton1Click:Connect(function()
        if MASTER_ENABLED then
            AFK_ENABLED = not AFK_ENABLED
            print("AFK Mode: " .. tostring(AFK_ENABLED))
        end
    end)

    autoparryButton.MouseButton1Click:Connect(function()
        if MASTER_ENABLED then
            AUTOPARRY_ENABLED = not AUTOPARRY_ENABLED
            print("Autoparry Mode: " .. tostring(AUTOPARRY_ENABLED))
        end
    end)
end

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    createMobileUI()
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

local function printValues()
    local formattedOutput = {
        "Current Config:",
        "-----------------------------------------",
        string.format("Base Threshold: %.4f", currentConfig.value1),
        string.format("Velocity Factor: %.4f", currentConfig.value2),
        string.format("Distance Factor: %.4f", currentConfig.value3),
        string.format("Math Max: %.4f", currentConfig.value4),
        "-----------------------------------------"
    }

    print(table.concat(formattedOutput, "\n"))
end

local function resolveVelocity(ball, ping)
    local currentPosition = ball.Position
    local currentVelocity = ball.Velocity
    local rtt = ping / 1000
    return currentPosition + currentVelocity * rtt
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
    local pingCompensation = ping * 2
    local baseThreshold = currentConfig.value1 + pingCompensation
    local velocityFactor = math.pow(ball.Velocity.magnitude, 1.3) * currentConfig.value2
    local distanceFactor = distance * currentConfig.value3
    return math.max(baseThreshold, currentConfig.value4 - velocityFactor - distanceFactor)
end

local function findNearestPlayer()
    local localPlayer = Players.LocalPlayer
    local localCharacter = localPlayer.Character
    if not localCharacter then return nil end

    local localRootPart = localCharacter:FindFirstChild("HumanoidRootPart")
    if not localRootPart then return nil end

    local nearestPlayer = nil
    local nearestDistance = math.huge

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer and player.Character then
            local targetRootPart = player.Character:FindFirstChild("HumanoidRootPart")
            if targetRootPart then
                local distance = (localRootPart.Position - targetRootPart.Position).Magnitude
                if distance < nearestDistance then
                    nearestDistance = distance
                    nearestPlayer = player
                end
            end
        end
    end

    return nearestPlayer
end

local function selectRandomPlayer()
    local players = Players:GetPlayers()
    local localPlayer = Players.LocalPlayer
    local validPlayers = {}

    for _, player in ipairs(players) do
        if player ~= localPlayer then
            table.insert(validPlayers, player)
        end
    end

    if #validPlayers > 0 then
        return validPlayers[math.random(1, #validPlayers)]
    end

    return nil
end

local function spoofCameraToPlayer(targetPlayer)
    local localPlayer = Players.LocalPlayer
    local targetRootPart = targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")

    if targetRootPart then
        local camera = Workspace.CurrentCamera
        local spoofDirection = (targetRootPart.Position - camera.CFrame.Position).Unit

        local success, errorMessage = pcall(function()
            local spoofRotation = CFrame.lookAt(camera.CFrame.Position, camera.CFrame.Position + spoofDirection)
            camera.CFrame = spoofRotation
        end)

        if not success then
            warn("Failed to spoof camera: " .. tostring(errorMessage))
        end
    end
end

RunService.RenderStepped:Connect(function()
    if not MASTER_ENABLED or not AFK_ENABLED then return end

    if tick() - lastMovePatternTime >= MOVE_PATTERN_INTERVAL then
        if math.random() < 0.5 then
            performMovePattern(MOVE_PATTERNS.spin)
        else
            performMovePattern(MOVE_PATTERNS.zigzag)
        end
        lastMovePatternTime = tick()
    end

    for _, ball in ipairs(getAllBalls()) do
        visualizeBallTrajectory(ball)
    end

    if tick() - lastTargetSwitch >= TARGET_SWITCH_INTERVAL then
        currentTargetPlayer = math.random() < 0.5 and findNearestPlayer() or selectRandomPlayer()
        lastTargetSwitch = tick()
    end

    if currentTargetPlayer then
        spoofCameraToPlayer(currentTargetPlayer)
    end
end)

local function simulateKeyPress(key, duration)
    Vim:SendKeyEvent(true, key, false, nil)
    task.wait(duration)
    Vim:SendKeyEvent(false, key, false, nil)
end

local function performSmartMovement()
    local keyOptions = MOVEMENT_KEYS
    local key = keyOptions[math.random(1, #keyOptions)]

    local delayBeforeMove = math.random(1, 6)
    task.wait(delayBeforeMove)

    local moveDuration = math.random(1, 2)
    simulateKeyPress(key, moveDuration)

    task.wait(MOVE_PAUSE)
end

local function performIdle()
    local idleDuration = math.random(MIN_IDLE_DURATION, MAX_IDLE_DURATION)
    task.wait(idleDuration)
end

RunService.RenderStepped:Connect(function()
    if not MASTER_ENABLED then return end
    if AFK_ENABLED then
        if tick() - lastCameraMove >= CAMERA_MOVE_INTERVAL then
            lastCameraMove = tick()
        end
        if tick() - lastActionTime >= PATH_RECALCULATE_INTERVAL then
            lastActionTime = tick()
            if math.random() < IDLE_CHANCE then
                performIdle()
            else
                performSmartMovement()
            end
        end
    end
end)

local function checkProximityToPlayer(ball, player)
    if not AUTOPARRY_ENABLED then return end
    local predictionTime = calculatePredictionTime(ball, player)
    local realBallAttribute = ball:GetAttribute("realBall")
    local target = ball:GetAttribute("target")
    local ballSpeedThreshold = calculateThreshold(ball, player)
    if predictionTime <= ballSpeedThreshold and realBallAttribute and target == player.Name and not isKeyPressed[ball] and (not lastPressTime[ball] or tick() - lastPressTime[ball] > pressCooldown) then
        Vim:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
        task.wait()
        Vim:SendKeyEvent(false, key, false, nil)
        lastPressTime[ball] = tick()
        isKeyPressed[ball] = true
    elseif lastPressTime[ball] and (predictionTime > ballSpeedThreshold or not realBallAttribute or target ~= player.Name) then
        isKeyPressed[ball] = false
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
    if not MASTER_ENABLED or not AUTOPARRY_ENABLED then return end
    local player = Players.LocalPlayer
    if player and player.Character then
        for _, ball in ipairs(getAllBalls()) do
            checkProximityToPlayer(ball, player)
        end
    else
        isKeyPressed = {}
    end
end

printValues()
RunService.RenderStepped:Connect(checkBallsProximity)
ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
