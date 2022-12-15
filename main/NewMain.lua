local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")
local Libraryflags = Library.flags
local Wait = Library.subs.Wait
local player = Library.LP
local speaker = game.Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local Camera = workspace.CurrentCamera
origsettings = {abt = Lighting.Ambient, oabt = Lighting.OutdoorAmbient, brt = Lighting.Brightness, time = Lighting.ClockTime, fe = Lighting.FogEnd, fs = Lighting.FogStart, gs = Lighting.GlobalShadows}

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local Window = Library:CreateWindow({
	Name = 'Unbounded Yeild',
	Themeable = {
		Info = 'Discord Server: VzYTJ7Y',
		Credit = true,
	},
	DefaultTheme = shared.themename or '{"__Designer.Colors.main":"963fcc"}'
})

local PlayerTab = Window:CreateTab({
	Name = 'Player'
})
local VisualsTab = Window:CreateTab({
	Name = 'Visuals'
})
local FunTab = Window:CreateTab({
	Name = 'Fun'
})


local Player1 = PlayerTab:CreateSection({
	Name = 'Player',
	Side = 'left'
})
local Player2 = PlayerTab:CreateSection({
	Name = 'Stuff',
	Side = 'Right'
})
local Player3 = PlayerTab:CreateSection({
	Name = 'Body',
	Side = 'Right'
})
local Player4 = PlayerTab:CreateSection({
	Name = 'Others',
	Side = 'Left'
})

local Visuals1 = VisualsTab:CreateSection({
	Name = 'World',
	Side = 'Left'
})
local Visuals2 = VisualsTab:CreateSection({
	Name = 'Name Spoofer',
	Side = 'Right'
})

local Funny1 = FunTab:CreateSection({
	Name = 'Sex',
	Side = 'Left'
})

local Speed1 = Player1:AddTextbox({
	Name = 'Modify Speed',
	Flag = "speed_velo",
	Value = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed,
	Multiline = true,
	Callback = function(speeeeeeeeed)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speeeeeeeeed
	end
})

local jumpPower1 = Player1:AddTextbox({
	Name = 'Modify JumpPower',
	Flag = "jumppower12",
	Value = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower,
	Multiline = true,
	Callback = function(jumpyy)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = jumpyy
	end
})

local jumpPower1 = Player1:AddTextbox({
	Name = 'Modify Gravity',
	Flag = "garvityworkspace",
	Value = game.Workspace.Gravity,
	Multiline = true,
	Callback = function(gravityyyyyywor)
		game.Workspace.Gravity = gravityyyyyywor
	end
})

_G.noclip = false
game:GetService("RunService").Stepped:Connect(function()
    if _G.noclip == true then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "Torso" or v.Name == "Head" or v.Name == "UpperTorso" or v.Name == "LowerTorso" or v.Name == "HumanoidRootPart" then
				v.CanCollide = false
			end
		end
    end
end)
local noclip = Player1:AddToggle({
	Name = 'NoClip',
	Value = false,
	Flag = 'nocli243242424p',
	Locked = false,
	Keybind = {
		Flag = 'noclip',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.noclip = true
		else
			_G.noclip = false
		end
	end
})

_G.flyjump = false
local flyjump = Player1:AddToggle({
	Name = 'Fly Jump',
	Value = false,
	Flag = 'flyjumplol',
	Locked = false,
	Keybind = {
		Flag = 'keybindflyjump',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.flyjump = true
			game:GetService("UserInputService").JumpRequest:connect(function()
    			if true and _G.flyjump == true then
        			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    			end
			end)
		else
			_G.flyjump = false
		end
	end
})

_G.infjump = false
local flyjump = Player1:AddToggle({
	Name = 'Inf Jump',
	Value = false,
	Flag = 'infjumplol',
	Locked = false,
	Keybind = {
		Flag = 'keybindinfjump',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.infjump = true
			function Action(Object, Function) if Object ~= nil then Function(Object); end end
			local Player = game:GetService'Players'.LocalPlayer;
			local UIS = game:GetService'UserInputService';
 
			UIS.InputBegan:connect(function(UserInput)
    			if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space and _G.infjump == true then
        			Action(Player.Character.Humanoid, function(self)
            			if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                			Action(self.Parent.HumanoidRootPart, function(self)
                    			self.Velocity = Vector3.new(0, 50, 0);
                			end)
            			end
        			end)
    			end
			end)
		else
			_G.infjump = false
		end
	end
})

_G.cframefloat = false
local cframefloat = Player1:AddToggle({
	Name = 'CFrame Speed',
	Value = false,
	Flag = 'cferaweflaot',
	Locked = false,
	Keybind = {
		Flag = 'cferaweflaot1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.cframefloat = true
			Speed = 2.4

			You = game.Players.LocalPlayer.Name
			UIS = game:GetService("UserInputService")

			while _G.cframefloat == true do
				if UIS:IsKeyDown(Enum.KeyCode.W) then
					game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0,0,-Speed)
				end;
				if UIS:IsKeyDown(Enum.KeyCode.A) then
					game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(-Speed,0,0)
				end;
				if UIS:IsKeyDown(Enum.KeyCode.S) then
					game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0,0,Speed)
				end;
				if UIS:IsKeyDown(Enum.KeyCode.D) then
					game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(Speed,0,0)
				end;
				wait()
			end
		else
			_G.cframefloat = false
		end
	end
})

_G.clickTp = false
local flyjump = Player1:AddToggle({
	Name = 'CTRL + Click Tp',
	Value = false,
	Flag = 'clicktpctrl',
	Locked = false,
	Keybind = {
		Flag = 'keybindclicktp',
		Mode = 'Toggle',
	},

	Callback = function( clicktp )
		if ( clicktp ) then
			_G.clickTp = true
			local UIS = game:GetService("UserInputService")

			local Player = game.Players.LocalPlayer
			local Mouse = Player:GetMouse()


			function GetCharacter()
				return game.Players.LocalPlayer.Character
			end

			function Teleport(pos)
				local Char = GetCharacter()
				if Char then
					Char:MoveTo(pos)
				end
			end

			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.clickTp == true then
					Teleport(Mouse.Hit.p)
				end
			end)
		else
			_G.clickTp = false
		end
	end
})

_G.flyiing = false
local fly = Player1:AddToggle({
	Name = 'Fly | X to fly',
	Value = false,
	Flag = 'flybypass',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			_G.flyiing = true
			_G.Speed = 150
			_G.Key = Enum.KeyCode.X
		
			local UIS = game:GetService("UserInputService")
			local OnRender = game:GetService("RunService").RenderStepped
		
			local Player = game:GetService("Players").LocalPlayer
			local Character = Player.Character or Player.CharacterAdded:Wait()
		
			local Camera = workspace.CurrentCamera
			local Root = Character:WaitForChild("HumanoidRootPart")
		
			local C1, C2, C3;
			local penisNIggers1 = {Flying = false, Forward = false, Backward = false, Left = false, Right = false}
			C1 = UIS.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.Keyboard then
					if Input.KeyCode == _G.Key and _G.flyiing == true then
						penisNIggers1.Flying = not penisNIggers1.Flying
						Root.Anchored = penisNIggers1.Flying
					elseif Input.KeyCode == Enum.KeyCode.W then
						penisNIggers1.Forward = true
					elseif Input.KeyCode == Enum.KeyCode.S then
						penisNIggers1.Backward = true
					elseif Input.KeyCode == Enum.KeyCode.A then
						penisNIggers1.Left = true
					elseif Input.KeyCode == Enum.KeyCode.D then
						penisNIggers1.Right = true
					end
				end
			end)
		
			C2 = UIS.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.Keyboard then
					if Input.KeyCode == Enum.KeyCode.W then
						penisNIggers1.Forward = false
					elseif Input.KeyCode == Enum.KeyCode.S then
						penisNIggers1.Backward = false
					elseif Input.KeyCode == Enum.KeyCode.A then
						penisNIggers1.Left = false
					elseif Input.KeyCode == Enum.KeyCode.D then
						penisNIggers1.Right = false
					end
				end
			end)
		
			C3 = Camera:GetPropertyChangedSignal("CFrame"):Connect(function()
				if penisNIggers1.Flying then
					Root.CFrame = CFrame.new(Root.CFrame.Position, Root.CFrame.Position + Camera.CFrame.LookVector)
				end
			end)
		
			while _G.flyiing == true do 
				local Delta = OnRender:Wait()
				if penisNIggers1.Flying then
					if penisNIggers1.Forward then
						Root.CFrame = Root.CFrame + (Camera.CFrame.LookVector * (Delta * _G.Speed))
					end
					if penisNIggers1.Backward then
						Root.CFrame = Root.CFrame + (-Camera.CFrame.LookVector * (Delta * _G.Speed))
					end
					if penisNIggers1.Left then
						Root.CFrame = Root.CFrame + (-Camera.CFrame.RightVector * (Delta * _G.Speed))
					end
					if penisNIggers1.Right then
						Root.CFrame = Root.CFrame + (Camera.CFrame.RightVector * (Delta * _G.Speed))
					end
				end
			end
		else
			_G.flyiing = false
		end
	end
})

_G.freecam = false
local dfcam = Player1:AddToggle({
	Name = 'Free Cam | C to Freecam',
	Value = false,
	Flag = 'nhrtgdrgdfg',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			_G.freecam = true
			ToggleKey = Enum.KeyCode.C
			SprintKey = Enum.KeyCode.Tab

			localPlayer = game.Players.LocalPlayer

			Camera = game.Workspace.CurrentCamera
			Mouse = localPlayer:GetMouse()

			UserInputService = game:GetService("UserInputService")


			movePosition = Vector2.new(0,0)
			moveDirection = Vector3.new(0,0,0)

			targetMovePosition = movePosition

			Y_Sensitivity = 300;
			X_Sensitivity = 300;

			lastRightButtonDown = Vector2.new(0,0)
			rightMouseButtonDown = false

			targetFOV = 70

			sprinting = false;
			sprintingSpeed = 3;

			keysDown = {}

			moveKeys = {
				[Enum.KeyCode.D] = Vector3.new(1,0,0),
				[Enum.KeyCode.A] = Vector3.new(-1,0,0),
				[Enum.KeyCode.S] = Vector3.new(0,0,1),
				[Enum.KeyCode.W] = Vector3.new(0,0,-1),
				[Enum.KeyCode.E] = Vector3.new(0,1,0),
				[Enum.KeyCode.Q] = Vector3.new(0,-1,0)
			}

			Tween = function(a,b,t)
				if t == 1 then
					return b
				else 
					if tonumber(a) then
						return a * (1-t) + (b*t)
					else
						return a:Lerp(b,t);
					end
				end
			end

			ClampVector3 = function(x,min,max)

				return 
				Vector3.new(
					math.clamp(x.X,min.X,max.X),
					math.clamp(x.Y,min.Y,max.Y),
					math.clamp(x.Z,min.Z,max.Z)
				)

			end


			UserInputService.InputChanged:connect(function(inputObject)
				if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
					movePosition = movePosition + Vector2.new(inputObject.Delta.x,inputObject.Delta.y)
				end
			end)

			CalculateMovement = function()
				local newMovement = Vector3.new(0,0,0)
				for i,v in pairs(keysDown) do
					newMovement = newMovement + (moveKeys[i] or Vector3.new(0,0,0))
				end
				return newMovement
			end

			Round = function(num, numDecimalPlaces)
				return math.floor((num/numDecimalPlaces) + .5)*numDecimalPlaces
			end

			Input = function(input,gameProcessed)
				if moveKeys[input.KeyCode] then
					if input.UserInputState == Enum.UserInputState.Begin then
						keysDown[input.KeyCode] = true
					elseif input.UserInputState == Enum.UserInputState.End then
						keysDown[input.KeyCode] = nil
					end
				else
					if input.UserInputState == Enum.UserInputState.Begin then
						print(input.KeyCode)
						if input.UserInputType == Enum.UserInputType.MouseButton2 then
							rightMouseButtonDown = true
							lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
							UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
						elseif input.KeyCode == Enum.KeyCode.Z then
							targetFOV = 20
						elseif input.KeyCode == SprintKey then
							sprinting = true
						end
					else
						if input.UserInputType == Enum.UserInputType.MouseButton2 then
							rightMouseButtonDown = false
							UserInputService.MouseBehavior = Enum.MouseBehavior.Default
						elseif input.KeyCode == Enum.KeyCode.Z then
							targetFOV = 70
						elseif input.KeyCode == SprintKey then
							sprinting = false
						end
					end
				end
			end
 
			Mouse.WheelForward:connect(function()
				Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0,0,-5)
			end)

			Mouse.WheelBackward:connect(function()
				Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0,0,5)
			end)

			UserInputService.InputBegan:connect(Input)
			UserInputService.InputEnded:connect(Input)

			local Toggled = false
			game:GetService("UserInputService").InputBegan:connect(function(inputObject)
				if inputObject.KeyCode == ToggleKey and _G.freecam == true then
					Toggled = not Toggled
					if Toggled then
						Camera.CameraType = Enum.CameraType.Scriptable
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
						game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
					else
						game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
						game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
						game.Workspace.CurrentCamera.CameraType = "Custom"
					end
				end
			end)


			game:GetService("RunService").RenderStepped:Connect(function()
				if Toggled then
					local mouseTarget = Mouse.Hit

					targetMovePosition = movePosition
					Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y/Y_Sensitivity ,-targetMovePosition.X/X_Sensitivity, 0) * CFrame.new(CalculateMovement() * ((({[true]=sprintingSpeed})[sprinting]) or .5) )
					Camera.FieldOfView = Tween(Camera.FieldOfView,targetFOV,.5)
					if rightMouseButtonDown then
						UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
						movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X,Mouse.Y))
						lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
					end
				end
			end)
		else
			_G.freecam = false
		end
	end
})

local toollabel = Player2:CreateLabel({
	Text = 'Tools'
})

local btools = Player2:AddButton({
	Name = "Spawn BTools",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end
})
local btoolsno = Player2:AddButton({
	Name = "Destroy BTools",
	Callback = function()
		for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			if e:IsA("Tool") and e.Name == "F3X" then
				e:Destroy()
			end
		end
	end
})
local destroytools = Player2:AddButton({
	Name = "Destroy All Tools",
	Callback = function()
		for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
			if e:IsA("Tool") then
				e:Destroy()
			end
		end
	end
})
local droptools = Player2:AddButton({
	Name = "Drop Tools",
	Callback = function()
		for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = Players.LocalPlayer.Character
			end
		end
		wait()
		for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = workspace
			end
		end
	end
})
local tooldroptrue = Player2:AddButton({
	Name = "Make Tools Droppable",
	Callback = function()
		if speaker.Character then
			for _,obj in pairs(speaker.Character:GetChildren()) do
				if obj:IsA("Tool") then
					obj.CanBeDropped = true
				end
			end
		end
		if speaker:FindFirstChildOfClass("Backpack") then
			for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
				if obj:IsA("Tool") then
					obj.CanBeDropped = true
				end
			end
		end
	end
})
local equiptools = Player2:AddButton({
	Name = "Equip All Tools",
	Callback = function()
		for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if v:IsA("Tool") or v:IsA("HopperBin") then
				v.Parent = speaker.Character
			end
		end
	end
})
local unequiptools = Player2:AddButton({
	Name = "Un-Equip Tools",
	Callback = function()
		speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
	end
})

local hatslable = Player2:CreateLabel({
	Text = 'Hats'
})

local drophats = Player2:AddButton({
	Name = "Drop Hats",
	Callback = function()
		if speaker.Character then
			for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
				v.Parent = workspace
			end
		end	
	end
})
local deletehats = Player2:AddButton({
	Name = "Destroy Hats",
	Callback = function()
		for i,v in next, speaker.Character:GetDescendants() do
			if v:IsA("Accessory") then
				for i,p in next, v:GetDescendants() do
					if p:IsA("Weld") then
						p:Destroy()
					end
				end
			end
		end
	end
})


local animlable = Player3:CreateLabel({
	Text = 'Animations'
})

local Disableanims = Player3:AddButton({
	Name = "Disable Animations",
	Callback = function()
		local CAS = game:GetService("ContextActionService")
		local FA = "freezeMovement"
		CAS:BindAction(
			FA,
			function()
				return Enum.ContextActionResult.Sink
			end,
			false,
			unpack(Enum.PlayerActions:GetEnumItems())
		)
		wait(1.5)
		CAS:UnbindAction(FA)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		game.Players.LocalPlayer.Character.Animate.Disabled = true
	end
})
local Enableanims = Player3:AddButton({
	Name = "Enable Animations",
	Callback = function()
		game.Players.LocalPlayer.Character.Animate.Disabled = false
	end
})
local Freezeanims = Player3:AddButton({
	Name = "Freeze Animations",
	Callback = function()
		game.Players.LocalPlayer.Character.Animate.Disabled = true
	end
})
local UnFreezeAnimations = Player3:AddButton({
	Name = "Un-Freeze Animations",
	Callback = function()
		game.Players.LocalPlayer.Character.Animate.Disabled = false
	end
})

local animlable = Player3:CreateLabel({
	Text = 'Body'
})

local sit = Player3:AddButton({
	Name = "Sit",
	Callback = function()
		speaker.Character:FindFirstChildOfClass("Humanoid").Sit = true
	end
})
local lay = Player3:AddButton({
	Name = "Lay/Rotate Body",
	Callback = function()
		local Human = speaker.Character and speaker.Character:FindFirstChildOfClass('Humanoid')
		if not Human then
			return
		end
		Human.Sit = true
		task.wait(.1)
		Human.RootPart.CFrame = Human.RootPart.CFrame * CFrame.Angles(math.pi * .5, 0, 0)
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
	end
})
local nolimbs = Player3:AddButton({
	Name = "No limbs",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperLeg" or
					v.Name == "LeftUpperLeg" or
					v.Name == "RightUpperArm" or
					v.Name == "LeftUpperArm" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Leg" or
					v.Name == "Left Leg" or
					v.Name == "Right Arm" or
					v.Name == "Left Arm" then
					v:Destroy()
				end
			end
		end
	end
})
local nohead = Player3:AddButton({
	Name = "No Head",
	Callback = function()
		local lp = game:GetService "Players".LocalPlayer
		if lp.Character:FindFirstChild "Head" then
			local char = lp.Character
			char.Archivable = true
			local new = char:Clone()
			new.Parent = workspace
			lp.Character = new
			wait(2)
			local oldhum = char:FindFirstChildWhichIsA "Humanoid"
			local newhum = oldhum:Clone()
			newhum.Parent = char
			newhum.RequiresNeck = false
			oldhum.Parent = nil
			wait(2)
			lp.Character = char
		new:Destroy()
		wait(1)
		newhum:GetPropertyChangedSignal("Health"):Connect(
			function()
				if newhum.Health <= 0 then
					oldhum.Parent = lp.Character
					wait(1)
					oldhum:Destroy()
				end
			end)
		workspace.CurrentCamera.CameraSubject = char
		if char:FindFirstChild "Animate" then
			char.Animate.Disabled = true
			wait(.1)
			char.Animate.Disabled = false
		end
		lp.Character:FindFirstChild "Head":Destroy()
	end
	if simulationradius then
	game:GetService("RunService").Heartbeat:Connect(function()
	setsimulationradius(1/0,1/0)
	end) end
	end
})
local noarms = Player3:AddButton({
	Name = "No Arms",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperArm" or
					v.Name == "LeftUpperArm" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Arm" or
					v.Name == "Left Arm" then
					v:Destroy()
				end
			end
		end
	end
})
local nolegs = Player3:AddButton({
	Name = "No Legs",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperLeg" or
					v.Name == "LeftUpperLeg" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Leg" or
					v.Name == "Left Leg" then
					v:Destroy()
				end
			end
		end
	end
})

local mnorootes = Player3:AddButton({
	Name = "No Root",
	Callback = function()
		if speaker.Character ~= nil then
			local char = game.Players.LocalPlayer.Character
			char.Parent = nil
			char.HumanoidRootPart:Destroy()
			char.Parent = workspace
		end
	end
})
local yesroot123 = Player3:AddButton({
	Name = "Replace Root",
	Callback = function()
		if speaker.Character ~= nil and speaker.Character:FindFirstChild("HumanoidRootPart") then
			local Char = speaker.Character
			local OldParent = Char.Parent
			local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
			local OldPos = HRP.CFrame
			Char.Parent = game
			local HRP1 = HRP:Clone()
			HRP1.Parent = Char
			HRP = HRP:Destroy()
			HRP1.CFrame = OldPos
			Char.Parent = OldParent
		end
	end
})
local split = Player3:AddButton({
	Name = "Split Body",
	Callback = function()
		if r15(speaker) then
			speaker.Character.UpperTorso.Waist:Destroy()
		else
			Library.Notify({
				Text = "r15 Is required for this to work",
				Duration = 6
			})
		end
	end
})


local animlable = Player3:CreateLabel({
	Text = 'States'
})


local godmode = Player4:AddButton({
	Name = "GodMode",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid:Remove()
    	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
    	game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass('Humanoid').HipHeight = 2
	end
})
function invis1()
    invisRunning = false
    if invisRunning then return end
    invisRunning = true
    local Player = game.Players.LocalPlayer
    repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = Lighting
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

    local invisFix = game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

    for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = .5
			end
		end
	end

    function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

    if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = Lighting
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	
    workspace.CurrentCamera:remove()
	wait(.1)
    local speaker = game.Players.LocalPlayer
	repeat wait() until speaker.Character ~= nil
	workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	speaker.CameraMinZoomDistance = 0.5
	speaker.CameraMaxZoomDistance = 400
	speaker.CameraMode = "Classic"
	speaker.Character.Head.Anchored = false
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
	Library.Notify({
		Text = "You are Now Invisible to other Players",
		Duration = 6
	})
end

local invis = Player4:AddButton({
	Name = "Invisible",
	Callback = function()
		invis1()
	end
})

local nilchar = Player4:AddToggle({
	Name = 'Nil Character',
	Value = false,
	Flag = 'nilchar1',
	Locked = false,
	Keybind = {
		Flag = 'nilll1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if speaker.Character ~= nil then
				speaker.Character.Parent = nil
			end
		else
			if speaker.Character ~= nil then
				speaker.Character.Parent = workspace
			end
		end
	end
})

local stun = Player4:AddToggle({
	Name = 'Stun',
	Value = false,
	Flag = 'stunfunni',
	Locked = false,
	Keybind = {
		Flag = 'syuuf_stun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
		end
	end
})
_G.spamstun = false
local stun2 = Player4:AddToggle({
	Name = 'Become Retarded',
	Value = false,
	Flag = 'stunfunni1',
	Locked = false,
	Keybind = {
		Flag = 'syuufs_stun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamstun = true
			while _G.spamstun == true do
				wait()
				speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				wait(0.6)
				speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		else
			_G.spamstun = false
		end
	end
})

local funnyspin = Player4:AddToggle({
	Name = 'Spin',
	Value = false,
	Flag = 'spinnn',
	Locked = false,
	Keybind = {
		Flag = 'asf5ernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local spinSpeed = 20
			for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
				if v.Name == "Spinning" then
					v:Destroy()
				end
			end
			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "Spinning"
			Spin.Parent = getRoot(speaker.Character)
			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
			Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
		else
			for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
				if v.Name == "Spinning" then
					v:Destroy()
				end
			end
		end
	end
})



local lightstuff = Visuals1:CreateLabel({
	Text = 'Lighting'
})

local fb1 = Visuals1:AddButton({
	Name = "Full Bright",
	Callback = function()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end
})
local nofog = Visuals1:AddButton({
	Name = "No Fog",
	Callback = function()
		Lighting.FogEnd = 100000
		for i,v in pairs(Lighting:GetDescendants()) do
			if v:IsA("Atmosphere") then
				v:Destroy()
			end
		end
	end
})
local nofog = Visuals1:AddButton({
	Name = "Disable Global Shadows",
	Callback = function()
		Lighting.GlobalShadows = false
	end
})
local yesfog = Visuals1:AddButton({
	Name = "Enable Global Shadows",
	Callback = function()
		Lighting.GlobalShadows = true
	end
})
local restorelighting = Visuals1:AddButton({
	Name = "Restore Lighting",
	Callback = function()
		Lighting.Ambient = origsettings.abt
		Lighting.OutdoorAmbient = origsettings.oabt
		Lighting.Brightness = origsettings.brt
		Lighting.ClockTime = origsettings.time
		Lighting.FogEnd = origsettings.fe
		Lighting.FogStart = origsettings.fs
		Lighting.GlobalShadows = origsettings.gs
	end
})


local lightstuff = Visuals1:CreateLabel({
	Text = 'World'
})

local day1 = Visuals1:AddButton({
	Name = "Day",
	Callback = function()
		Lighting.ClockTime = 14
	end
})
local night1 = Visuals1:AddButton({
	Name = "Night",
	Callback = function()
		Lighting.ClockTime = 0
	end
})

local nickspoofer = Visuals2:AddTextbox({
	Name = 'Dislay Name',
	Flag = "displayspfofokf",
	Value = game.Players.LocalPlayer.DisplayName,
	Multiline = true,
	Callback = function( spooooooooof1 )
		game.Players.LocalPlayer.DisplayName = spooooooooof1
	end
})
local namespoofer = Visuals2:AddTextbox({
	Name = 'User Name',
	Flag = "displayspfofokf",
	Value = game.Players.LocalPlayer.Name,
	Multiline = true,
	Callback = function( spefiyhg4sruhig2 )
		game.Players.LocalPlayer.Name = spefiyhg4sruhig2
	end
})


local Global = getgenv and getgenv() or _G
local sex1 = Funny1:AddButton({
	Name = "basic Bang",
	Callback = function()
		local number = "4966833843"

		if Global.Dancing == true then
			Global.Dancing = false
		end
	
		local aaa = 'rbxassetid://' .. number
	
		if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua'))()
		end
	
		local NeededAssets = game:GetObjects(aaa)[1]
		local TweenService = game:GetService'TweenService'
		if game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy() end
		if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then game.Players.LocalPlayer.Character:FindFirstChild("Animate"):Destroy() end
		local Joints = {
			["Torso"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"],
			["Right Arm"] =  game.Players.LocalPlayer.Character.Torso["Right Shoulder"],
			["Left Arm"] =  game.Players.LocalPlayer.Character.Torso["Left Shoulder"],
			["Head"] =  game.Players.LocalPlayer.Character.Torso["Neck"],
			["Left Leg"] =  game.Players.LocalPlayer.Character.Torso["Left Hip"],
			["Right Leg"] =  game.Players.LocalPlayer.Character.Torso["Right Hip"]
			}
		Global.dancing = true
		local speed = 1
		local keyframes = NeededAssets:GetKeyframes()
		repeat
			for ii,frame in pairs(keyframes) do
				local duration = keyframes[ii+1] and keyframes[ii+1].Time - frame.Time or task.wait(1/120)
				if keyframes[ii-1] then
					task.wait((frame.Time - keyframes[ii-1].Time)*speed)
				end
				for i,v in pairs(frame:GetDescendants()) do
					if Joints[v.Name] then
						TweenService:Create(Joints[v.Name],TweenInfo.new(duration*speed),{Transform = v.CFrame}):Play()
					end
				end
			end
			task.wait(1/120)
		until Global.dancing == false
	end
})
local sex1 = Funny1:AddButton({
	Name = "Pushups",
	Callback = function()
		local number = "4966881089"

		if Global.Dancing == true then
			Global.Dancing = false
		end
	
		local aaa = 'rbxassetid://' .. number
	
		if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua'))()
		end
	
		local NeededAssets = game:GetObjects(aaa)[1]
		local TweenService = game:GetService'TweenService'
		if game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy() end
		if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then game.Players.LocalPlayer.Character:FindFirstChild("Animate"):Destroy() end
		local Joints = {
			["Torso"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"],
			["Right Arm"] =  game.Players.LocalPlayer.Character.Torso["Right Shoulder"],
			["Left Arm"] =  game.Players.LocalPlayer.Character.Torso["Left Shoulder"],
			["Head"] =  game.Players.LocalPlayer.Character.Torso["Neck"],
			["Left Leg"] =  game.Players.LocalPlayer.Character.Torso["Left Hip"],
			["Right Leg"] =  game.Players.LocalPlayer.Character.Torso["Right Hip"]
		}
		Global.dancing = true
		local speed = 1
		local keyframes = NeededAssets:GetKeyframes() -- get keyframes, this is better then getchildren bc it gets the correct order 
		repeat
			for ii,frame in pairs(keyframes) do -- for i,v on each keyframe to get each individual frame
				local duration = keyframes[ii+1] and keyframes[ii+1].Time - frame.Time or task.wait(1/120)
				if keyframes[ii-1] then
					task.wait((frame.Time - keyframes[ii-1].Time)*speed)
				end
				for i,v in pairs(frame:GetDescendants()) do -- get each part in the frame
					if Joints[v.Name] then -- see if the part exists in the joint table
						TweenService:Create(Joints[v.Name],TweenInfo.new(duration*speed),{Transform = v.CFrame}):Play()
					end
				end
			end
			task.wait(1/120)
		until Global.dancing == false
	end
})
local sex1 = Funny1:AddButton({
	Name = "Bend Over",
	Callback = function()
		local number = "4966882047"

		if Global.Dancing == true then
			Global.Dancing = false
		end
	
		local aaa = 'rbxassetid://' .. number
	
		if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua'))()
		end
	
		local NeededAssets = game:GetObjects(aaa)[1]
		local TweenService = game:GetService'TweenService'
		if game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy() end
		if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then game.Players.LocalPlayer.Character:FindFirstChild("Animate"):Destroy() end
		local Joints = {
			["Torso"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"],
			["Right Arm"] =  game.Players.LocalPlayer.Character.Torso["Right Shoulder"],
			["Left Arm"] =  game.Players.LocalPlayer.Character.Torso["Left Shoulder"],
			["Head"] =  game.Players.LocalPlayer.Character.Torso["Neck"],
			["Left Leg"] =  game.Players.LocalPlayer.Character.Torso["Left Hip"],
			["Right Leg"] =  game.Players.LocalPlayer.Character.Torso["Right Hip"]
		}
		Global.dancing = true
		local speed = 1
		local keyframes = NeededAssets:GetKeyframes() -- get keyframes, this is better then getchildren bc it gets the correct order 
		repeat
			for ii,frame in pairs(keyframes) do -- for i,v on each keyframe to get each individual frame
				local duration = keyframes[ii+1] and keyframes[ii+1].Time - frame.Time or task.wait(1/120)
				if keyframes[ii-1] then
					task.wait((frame.Time - keyframes[ii-1].Time)*speed)
				end
				for i,v in pairs(frame:GetDescendants()) do -- get each part in the frame
					if Joints[v.Name] then -- see if the part exists in the joint table
						TweenService:Create(Joints[v.Name],TweenInfo.new(duration*speed),{Transform = v.CFrame}):Play()
					end
				end
			end
			task.wait(1/120)
		until Global.dancing == false
	end
})
local sex1 = Funny1:AddButton({
	Name = "lying Down",
	Callback = function()
		local number = "4966879039"

		if Global.Dancing == true then
			Global.Dancing = false
		end
	
		local aaa = 'rbxassetid://' .. number
	
		if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua'))()
		end
	
		local NeededAssets = game:GetObjects(aaa)[1]
		local TweenService = game:GetService'TweenService'
		if game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy() end
		if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then game.Players.LocalPlayer.Character:FindFirstChild("Animate"):Destroy() end
		local Joints = {
			["Torso"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"],
			["Right Arm"] =  game.Players.LocalPlayer.Character.Torso["Right Shoulder"],
			["Left Arm"] =  game.Players.LocalPlayer.Character.Torso["Left Shoulder"],
			["Head"] =  game.Players.LocalPlayer.Character.Torso["Neck"],
			["Left Leg"] =  game.Players.LocalPlayer.Character.Torso["Left Hip"],
			["Right Leg"] =  game.Players.LocalPlayer.Character.Torso["Right Hip"]
		}
		Global.dancing = true
		local speed = 1
		local keyframes = NeededAssets:GetKeyframes() -- get keyframes, this is better then getchildren bc it gets the correct order 
		repeat
			for ii,frame in pairs(keyframes) do -- for i,v on each keyframe to get each individual frame
				local duration = keyframes[ii+1] and keyframes[ii+1].Time - frame.Time or task.wait(1/120)
				if keyframes[ii-1] then
					task.wait((frame.Time - keyframes[ii-1].Time)*speed)
				end
				for i,v in pairs(frame:GetDescendants()) do -- get each part in the frame
					if Joints[v.Name] then -- see if the part exists in the joint table
						TweenService:Create(Joints[v.Name],TweenInfo.new(duration*speed),{Transform = v.CFrame}):Play()
					end
				end
			end
			task.wait(1/120)
		until Global.dancing == false
	end
})
local sex1 = Funny1:AddButton({
	Name = "Blowjob",
	Callback = function()
		local number = "4963373273"

		if Global.Dancing == true then
			Global.Dancing = false
		end
	
		local aaa = 'rbxassetid://' .. number
	
		if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/ReanimMain.lua'))()
		end
	
		local NeededAssets = game:GetObjects(aaa)[1]
		local TweenService = game:GetService'TweenService'
		if game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy() end
		if game.Players.LocalPlayer.Character:FindFirstChild("Animate") then game.Players.LocalPlayer.Character:FindFirstChild("Animate"):Destroy() end
		local Joints = {
			["Torso"] = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"],
			["Right Arm"] =  game.Players.LocalPlayer.Character.Torso["Right Shoulder"],
			["Left Arm"] =  game.Players.LocalPlayer.Character.Torso["Left Shoulder"],
			["Head"] =  game.Players.LocalPlayer.Character.Torso["Neck"],
			["Left Leg"] =  game.Players.LocalPlayer.Character.Torso["Left Hip"],
			["Right Leg"] =  game.Players.LocalPlayer.Character.Torso["Right Hip"]
		}
		Global.dancing = true
		local speed = 1
		local keyframes = NeededAssets:GetKeyframes() -- get keyframes, this is better then getchildren bc it gets the correct order 
		repeat
			for ii,frame in pairs(keyframes) do -- for i,v on each keyframe to get each individual frame
				local duration = keyframes[ii+1] and keyframes[ii+1].Time - frame.Time or task.wait(1/120)
				if keyframes[ii-1] then
					task.wait((frame.Time - keyframes[ii-1].Time)*speed)
				end
				for i,v in pairs(frame:GetDescendants()) do -- get each part in the frame
					if Joints[v.Name] then -- see if the part exists in the joint table
						TweenService:Create(Joints[v.Name],TweenInfo.new(duration*speed),{Transform = v.CFrame}):Play()
					end
				end
			end
			task.wait(1/120)
		until Global.dancing == false
	end
})