
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "EggHub"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(230, 175)
frame.Position = UDim2.new(0.5, -115, 0.5, -87)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "EGG HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.fromRGB(100, 60, 180)
title.Parent = frame

local status = Instance.new("TextLabel")
status.Position = UDim2.fromOffset(10, 50)
status.Size = UDim2.new(1, -20, 0, 30)
status.Text = "Status: STOPPED"
status.TextColor3 = Color3.new(1, 1, 1)
status.BackgroundTransparency = 1
status.Parent = frame

local function makeButton(text, x)
    local b = Instance.new("TextButton")
    b.Position = UDim2.fromOffset(x, 90)
    b.Size = UDim2.fromOffset(100, 40)
    b.Text = text
    b.Parent = frame
    return b
end

makeButton("START", 10).Activated:Connect(function()
    status.Text = "Status: RUNNING"
end)

makeButton("STOP", 120).Activated:Connect(function()
    status.Text = "Status: STOPPED"
end)

gui.Parent = player:WaitForChild("PlayerGui")
