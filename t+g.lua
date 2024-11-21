setfpscap(240)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Vim = game:GetService("VirtualInputManager")
local ballFolder = Workspace.Balls
local trainingFolder = Workspace.TrainingBalls

local lastBallPressed, isKeyPressed = nil, false

local function calculatePredictionTime(ball, player)
    local rootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if rootPart then
        local relativePosition = ball.Position - rootPart.Position
        local velocity = ball.Velocity + rootPart.Velocity
        local a = ball.Size.magnitude / 2
        local b = relativePosition.magnitude
        local c = math.sqrt(a * a + b * b)
        return (c - a) / velocity.magnitude
    end
    return math.huge
end

local function checkProximityToPlayer(ball, player)
	local predictionTime = calculatePredictionTime(ball, player)
	local realBallAttribute = ball:GetAttribute("realBall")
	local target = ball:GetAttribute("target")
	local ballSpeedThreshold = math.max(0.3, 0.65 - ball.Velocity.magnitude * 0.01)
	if predictionTime <= ballSpeedThreshold and realBallAttribute and target == player.Name and not isKeyPressed then
		Vim:SendKeyEvent(true, Enum.KeyCode.F, false, nil)
		--mouse1click()
		task.wait(0.003)
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

RunService.RenderStepped:Connect(checkBallsProximity)
