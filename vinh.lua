
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "VINH_HUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(300, 200)
main.Position = UDim2.new(0.5, -150, 0.5, -100)
main.BackgroundColor3 = Color3.fromRGB(10, 25, 20)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.Parent = gui

Instance.new("UICorner", main).CornerRadius =
    UDim.new(0, 12)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 255, 100)
stroke.Thickness = 2
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -45, 0, 45)
title.Position = UDim2.fromOffset(12, 0)
title.BackgroundTransparency = 1
title.Text = "VINH HUB"
title.TextColor3 = Color3.fromRGB(0, 255, 100)
title.TextSize = 23
title.Font = Enum.Font.GothamBold
title.Parent = main

local close = Instance.new("TextButton")
close.Size = UDim2.fromOffset(32, 30)
close.Position = UDim2.new(1, -40, 0, 7)
close.Text = "X"
close.Parent = main

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -20, 0, 40)
info.Position = UDim2.fromOffset(10, 55)
info.BackgroundTransparency = 1
info.Text = "WELCOME TO VINH HUB"
info.TextColor3 = Color3.new(1, 1, 1)
info.TextSize = 15
info.Parent = main

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(1, -24, 0, 42)
btn.Position = UDim2.fromOffset(12, 110)
btn.BackgroundColor3 = Color3.fromRGB(0, 150, 70)
btn.Text = "VINH BUTTON"
btn.TextColor3 = Color3.new(1, 1, 1)
btn.Parent = main

btn.MouseButton1Click:Connect(function()
    info.Text = "VINH HUB IS RUNNING!"
end)
