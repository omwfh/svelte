local UserInputService = game:GetService("UserInputService")

local KB = _G.K
local TB = Enum.KeyCode.Colon
local MG = Enum.KeyCode.T

local LTimes = 0
local hasExecuted = false

local function notif(Title, Text, Duration)
    local CoreGUI = game:GetService("StarterGui")
    CoreGUI:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Duration = Duration;
    })
end

local function resetExecutionState()
    hasExecuted = false
end

local function onKeyPress(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.KeyCode == KB then
        if hasExecuted then
            notif("Warning", "Already executed!", 2)
            return
        end

        hasExecuted = true
        LTimes = LTimes + 1
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omwfh/svelte/refs/heads/main/t%2Bg.lua"))()

        task.wait(0.01)
        print("Count: " .. LTimes)
    elseif input.KeyCode == TB then
        print("terminate works")
        task.delay(5, resetExecutionState)
    elseif input.KeyCode == MG then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omwfh/svelte/refs/heads/main/p.lua"))()
    end
end

UserInputService.InputBegan:Connect(onKeyPress)
