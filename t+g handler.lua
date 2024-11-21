local UserInputService = game:GetService("UserInputService")

local keyToBind = _G.K

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

    if input.KeyCode == keyToBind then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/omwfh/svelte/refs/heads/main/t%2Bg.lua"))()
	LTimes = LTimes + 1
        
	task.wait(0.01)
        
	--notif("Loaded", "Loaded T+B", 2)
        print("Count: " .. LTimes)
    end
end

UserInputService.InputBegan:Connect(onKeyPress)
