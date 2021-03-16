wait(4)

-- platform under map so you don't fall
if workspace:FindFirstChild("platformhax") == nil then
	part = Instance.new("Part")
	part.Name = "platformhax"
	part.Color = Color3.fromRGB(170, 0, 170)
	part.Material = Enum.Material.Plastic
	part.Transparency = 0.5
	part.Position = Vector3.new(1133.55505, 53, -725.388977)
	part.Size = Vector3.new(500, 0.25, 500)
	part.Anchored = true
	part.Parent = workspace
	texture = Instance.new("Texture")
	texture.StudsPerTileU = 40
	texture.StudsPerTileV = 40
	texture.Texture = "rbxassetid://3324574047"
	texture.Transparency = 0.5
	texture.Parent = part
	texture.Face = "Top"
end
-- unlockws + btools

function unlock(obj)
	for i,v in pairs(obj:GetChildren()) do
		if v:IsA("BasePart") then
			v.Locked = false
		end
		unlock(v)
	end
end
unlock(workspace)
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab

-- teleport (not mine)
Player = game.Players.LocalPlayer
Gui = Instance.new("ScreenGui")
Gui.Parent = Player.PlayerGui
F = Instance.new("Frame")
F.BackgroundTransparency = 0.65
F.BorderSizePixel = 0
F.Position = UDim2.new(-0.008, 0,0.406, 0)
F.Size = UDim2.new(0,50,0,100)
Gui.Parent = Player.PlayerGui
Gui.Name = "FEGui"
F.Parent = Gui
SL = Instance.new("ImageButton",F)
SL.Name = "Sprint"
SL.Size = UDim2.new(0,50,0,50)
SL.Image = "rbxassetid://94366992"
SL.BackgroundTransparency = 1
SL.BorderSizePixel = 0
TL = Instance.new("ImageButton",F)
TL.Name = "Teleport"
TL.Position = UDim2.new(0,0,0.5,0)
TL.Size = UDim2.new(0,50,0,50)
TL.Image = "rbxassetid://282021040"
TL.ImageColor3 = Color3.new(5,5,5)
TL.BackgroundTransparency = 1
TL.BorderSizePixel = 0
SS = Instance.new("TextBox",F)
SS.Name = "SS"
SS.BackgroundColor3 = Color3.new(77,77,77)
SS.BackgroundTransparency = 0.35
SS.BorderSizePixel = 0
SS.Position = UDim2.new(1,0,0,0)
SS.Size = UDim2.new(0,75,0,25)
SS.Text = "Speed"
SS.Font = Enum.Font.Code
TS = Instance.new("TextBox",F)
TS.Name = "TS"
TS.BackgroundColor3 = Color3.new(77,77,77)
TS.BackgroundTransparency = 0.35
TS.BorderSizePixel = 0
TS.Position = UDim2.new(1,0,0.75,0)
TS.Size = UDim2.new(0,75,0,25)
TS.Text = "Player"
TS.Font = Enum.Font.Code
Tap = Instance.new("TextButton",F)
Tap.Name = "Tap"
Tap.BackgroundColor3 = Color3.new(77,77,77)
Tap.BackgroundTransparency = 0.35
Tap.BorderSizePixel = 0
Tap.Position = UDim2.new(1,0,0.375,0)
Tap.Size = UDim2.new(0,100,0,25)
Tap.Text = "Press E to TP"
Tap.Font = Enum.Font.Code
EXS = Instance.new("TextButton",SS)
EXS.Name = "EXS"
EXS.BackgroundTransparency = 0.75
EXS.Position = UDim2.new(1,0,0,0)
EXS.Size = UDim2.new(0,25,0,25)
EXS.Text = "Run"
EXS.Font = Enum.Font.Fantasy
EXTP = Instance.new("TextButton",TS)
EXTP.Name = "EXTP"
EXTP.BackgroundTransparency = 0.75
EXTP.Position = UDim2.new(1,0,0,0)
EXTP.Size = UDim2.new(0,25,0,25)
EXTP.Text = "TP"
EXTP.Font = Enum.Font.Fantasy
EXS.MouseButton1Click:Connect(function()
	local Speed = SS.Text
	game.Workspace[Player.Name].Humanoid.WalkSpeed = Speed
end)
--CreatedByTactical
EXTP.MouseButton1Click:Connect(function()
	local Target = TS.Text
	local Humanoid = Player.Character.HumanoidRootPart
	Humanoid.CFrame = game.Workspace[Target].Head.CFrame + Vector3.new(15,0,15) 
end)
Tap.MouseButton1Click:Connect(function()
	plr = game.Players.LocalPlayer
	hum = plr.Character.HumanoidRootPart
	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key == "e" then
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
			end
		end
	end)
end)
-- nagatoro particles
LocalPlayer = game.Players.LocalPlayer
torso = LocalPlayer.Character:WaitForChild("Torso")
emitter = Instance.new("ParticleEmitter")
emitter.Transparency = NumberSequence.new(0.5)
emitter.Rate = 20
emitter.Speed = NumberRange.new(3)
emitter.Lifetime = NumberRange.new(1)
emitter.SpreadAngle = Vector2.new(360, 360)
emitter.Parent = torso
emitter.Texture = "rbxassetid://3437901383"
emitter.Size = NumberSequence.new(1.5)
-- nagatoro music
if workspace:FindFirstChild("nagatoro is epic") == nil then
	sound = Instance.new("Sound")
	sound.Name = "nagatoro is epic"
	sound.SoundId = "rbxassetid://5998819632"
	sound.Playing = true
	sound.Looped = true
	sound.Volume = 5
	sound.Parent = workspace
end

-- platform under you so you fly
while(true) do
	leg = LocalPlayer.Character:FindFirstChild("Right Leg")
	position = Vector3.new(leg.Position.X, leg.Position.Y-2, leg.Position.Z)
	part = Instance.new("Part")
	part.Color = Color3.fromRGB(170, 0, 170)
	part.Material = Enum.Material.Plastic
	part.Transparency = 0.5
	part.Position = position
	part.Size = Vector3.new(6, 0.25, 6)
	part.Anchored = true
	part.Parent = workspace
	decal = Instance.new("Decal")
	decal.Texture = "rbxassetid://3437901383"
	decal.Face = "Top"
	decal.Transparency = 0.5
	decal.Parent = part
	wait(0)
	part:Destroy()
end
