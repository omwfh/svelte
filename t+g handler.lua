local UserInputService = game:GetService("UserInputService")

local KB = _G.K
local MG = Enum.KeyCode.P

local LTimes = 0

local function notif(Title, Text, Duration)
    local CoreGUI = game:GetService("StarterGui")
    CoreGUI:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Duration = Duration;
    })
end

local function onKeyPress(input, gameProcessed)
    if gameProcessed then
        return
    end

    if input.KeyCode == KB then
        LTimes = LTimes + 1
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omwfh/svelte/refs/heads/main/polished%20t%2Bg.lua"))()

        task.wait(0.01)
        print("Count: " .. LTimes)
    elseif input.KeyCode == MG then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omwfh/svelte/refs/heads/main/p.lua"))()
    end
end

UserInputService.InputBegan:Connect(onKeyPress)
