local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local label = Instance.new("TextBox")
local aktif = Instance.new("TextButton")
local kapat = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
main.Position = UDim2.new(0.331295848, 0, 0.232604384, 0)
main.Size = UDim2.new(0, 395, 0, 226)
main.Active = true
main.Draggable = true

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
label.Size = UDim2.new(0, 395, 0, 50)
label.Font = Enum.Font.SourceSans
label.Text = "Roblox Parkour Hack Cr: aniltosun29 and gardropfaruk "
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextSize = 14.000

aktif.Name = "aktif"
aktif.Parent = main
aktif.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
aktif.Position = UDim2.new(0, 0, 0.778761089, 0)
aktif.Size = UDim2.new(0, 200, 0, 50)
aktif.Font = Enum.Font.SourceSans
aktif.Text = "Aktif Et!"
aktif.TextColor3 = Color3.fromRGB(0, 0, 0)
aktif.TextSize = 14.000
aktif.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/aniltosun29/hile-2/main/parkour%20hack.lua"))()

	local plr = game:GetService"Players".LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if k == "c" then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			wait()
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		end
	end)
end)


kapat.Name = "kapat"
kapat.Parent = main
kapat.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
kapat.Position = UDim2.new(0.506329119, 0, 0.778761089, 0)
kapat.Size = UDim2.new(0, 195, 0, 50)
kapat.Font = Enum.Font.SourceSans
kapat.Text = "Menüyü kapat!"
kapat.TextColor3 = Color3.fromRGB(0, 0, 0)
kapat.TextSize = 14.000
kapat.MouseButton1Click:Connect(function()
	main.Visible = not main.Visible;
 end)
