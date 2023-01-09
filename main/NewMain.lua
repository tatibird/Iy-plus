local executiontime = tick()
--[[
▄▄▄▄▄▄▄▄░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░█
██▀▀▀▀▀▀█▄░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██
██░░░░░░██░░░░██░░░░▄▄▄▄▄▄▄░░░░░░▄▄▄▄▄▄▄░░░█░░░░░▄▄▄░░░░▄▄▄▄▄▄░░░░░▄▄░░░░░▄▄░░░▄██▄▄▄▄
██▄▄▄▄▄█▀░░░░░██░░░░▀░░░░▀██░░░░██▀░░░▀▀░░░█░░░▄██▀░░░▄█▀░░░▀██░░░░██░░░░░██░░░░██
██▀▀▀▀▀▀██▄░░░██░░░░░▄▄▄▄▄██░░░██░░░░░░░░░░█░▄██▀░░░░░██░░░░░░██░░░██░░░░░██░░░░██
██░░░░░░░██░░░██░░░██▀▀░░░██░░░██░░░░░░░░░░██▀██░░░░░░██░░░░░░██░░░██░░░░░██░░░░██
██░░░░░░▄██░░░██░░░██░░░░░██░░░▀█▄░░░░░░░░░█░░░▀█▄░░░░██░░░░░▄█▀░░░██░░░░░██░░░░██
█████████▀░░░░██░░░▀██▄▄█▀██░░░░▀██▄▄███░░░█░░░░░▀█▄░░░▀██▄▄██▀░░░░▀█████▀██░░░░▀██▄▄█]]


local Library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)("Pepsi's UI Library")
local Libraryflags = Library.flags
local Wait = Library.subs.Wait
local player = Library.LP
local speaker = game.Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local Camera = workspace.CurrentCamera
local ProximityPromptService = game:GetService("ProximityPromptService")
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
		Info = 'Discord Server: NbUUucBXhq',
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
local MiscTab = Window:CreateTab({
	Name = 'Misc'
})
local CreditsTab = Window:CreateTab({
	Name = 'Credits'
})


local Player0 = PlayerTab:CreateSection({
	Name = 'Modifications',
	Side = 'left'
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
local Visuals3 = VisualsTab:CreateSection({
	Name = 'Esp stuff',
	Side = 'Right'
})
local Visuals4 = VisualsTab:CreateSection({
	Name = 'Screen Exploits',
	Side = 'Right'
})
local Visuals5 = VisualsTab:CreateSection({
	Name = 'Spectate',
	Side = 'Left'
})

local Funny1 = FunTab:CreateSection({
	Name = 'Sex',
	Side = 'Left'
})
local Funny2 = FunTab:CreateSection({
	Name = 'Coffeeware Scripts',
	Side = 'Right'
})
local Funny3 = FunTab:CreateSection({
	Name = 'FE Scripts',
	Side = 'Right'
})
local Funny4 = FunTab:CreateSection({
	Name = 'bang',
	Side = 'Left'
})

local Misc1 = MiscTab:CreateSection({
	Name = 'Waypoints',
	Side = 'Left'
})
local Misc2 = MiscTab:CreateSection({
	Name = 'Bread Crumbs',
	Side = 'Right'
})
local Misc3 = MiscTab:CreateSection({
	Name = 'Bread Crumbs 2',
	Side = 'Right'
})
local Misc4 = MiscTab:CreateSection({
	Name = 'Misc',
	Side = 'Right'
})
local Misc6 = MiscTab:CreateSection({
	Name = 'Chat Spammer',
	Side = 'Left'
})
local Misc7 = MiscTab:CreateSection({
	Name = 'Game',
	Side = 'Right'
})
local Misc8 = MiscTab:CreateSection({
	Name = 'Hide',
	Side = 'left'
})


local Credits1 = CreditsTab:CreateSection({
	Name = 'Developer',
	Side = 'Left'
})
local Credits2 = CreditsTab:CreateSection({
	Name = 'Best Scripter',
	Side = 'Left'
})
local Credits3 = CreditsTab:CreateSection({
	Name = 'Cool people',
	Side = 'Left'
})
local Credits4 = CreditsTab:CreateSection({
	Name = 'Discord',
	Side = 'Right'
})



local Speed1 = Player0:AddTextbox({
	Name = 'Modify Speed',
	Flag = "speed_velo",
	Value = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed,
	Multiline = true,
	Callback = function(x)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = x
	end
})

local jumpPower1 = Player0:AddTextbox({
	Name = 'Modify JumpPower',
	Flag = "jumppower12",
	Value = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower,
	Multiline = true,
	Callback = function(x)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = x
	end
})

local garv = Player0:AddTextbox({
	Name = 'Modify Gravity',
	Flag = "garvityworkspace",
	Value = game.Workspace.Gravity,
	Multiline = true,
	Callback = function(x)
		game.Workspace.Gravity = x
	end
})

local maxslope = Player0:AddTextbox({
	Name = 'Modify Max lope Angle',
	Flag = "4rft65ytgo",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle,
	Multiline = true,
	Callback = function( x )
		speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle = x
	end
})

local hiphieghyt = Player0:AddTextbox({
	Name = 'Modify Hip height',
	Flag = "65ythglkj",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,
	Multiline = true,
	Callback = function( x )
		speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = x
	end
})

local fov1 = Player0:AddTextbox({
	Name = 'Modify FOV',
	Flag = "65y54trfgtj",
	Value = workspace.CurrentCamera.FieldOfView,
	Multiline = true,
	Callback = function( x )
		workspace.CurrentCamera.FieldOfView = x
	end
})

local fpscapyes = Player0:AddTextbox({
	Name = 'Modify FPS Cap',
	Flag = "65yt4rfkj",
	Value = 1e6,
	Multiline = true,
	Callback = function( x )
		setfpscap( x )
	end
})

_G.noclip = false
game:GetService("RunService").Stepped:Connect(function()
    if _G.noclip == true then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "Torso" or 
			v.Name == "Head" or
			v.Name == "UpperTorso" or 
			v.Name == "LowerTorso" or 
			v.Name == "HumanoidRootPart" then
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

_G.Bhop = false
local bhopissodunny = Player1:AddToggle({
	Name = 'B Hop',
	Value = false,
	Flag = 'nbhop24p',
	Locked = false,
	Keybind = {
		Flag = 'nobhpopdfip',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.Bhop = true
			while _G.Bhop == true do
				wait()
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
			end
		else
			_G.Bhop = false
		end
	end
})

local workspace = game.Workspace
swimming = false
local oldgrav = workspace.Gravity
local swimbeat = nil

local swim = Player1:AddToggle({
	Name = 'Swim',
	Value = false,
	Flag = 'sdwinfishfudhsSWIM',
	Locked = false,
	Keybind = {
		Flag = 'swinsd3rh7w98f',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
				oldgrav = workspace.Gravity
				workspace.Gravity = 0
				local swimDied = function()
					workspace.Gravity = oldgrav
					swimming = false
				end
				local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				gravReset = Humanoid.Died:Connect(swimDied)
				local enums = Enum.HumanoidStateType:GetEnumItems()
				table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
				for i, v in pairs(enums) do
					Humanoid:SetStateEnabled(v, false)
				end
				Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
				swimbeat = RunService.Heartbeat:Connect(function()
					pcall(function()
						speaker.Character.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and speaker.Character.HumanoidRootPart.Velocity or Vector3.new())
					end)
				end)
				swimming = true
			end
		else
			if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
				workspace.Gravity = oldgrav
				swimming = false
				if gravReset then
					gravReset:Disconnect()
				end
				if swimbeat ~= nil then
					swimbeat:Disconnect()
					swimbeat = nil
				end
				local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				local enums = Enum.HumanoidStateType:GetEnumItems()
				table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
				for i, v in pairs(enums) do
					Humanoid:SetStateEnabled(v, true)
				end
			end
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
local infjump = Player1:AddToggle({
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

_G.clickTp = false
local clicktp = Player1:AddToggle({
	Name = 'CTRL + Click Tp',
	Value = false,
	Flag = 'click3ctrl',
	Locked = false,
	Keybind = {
		Flag = 'keyb43clicktp',
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

_G.clickTp2 = false
local clicktp = Player1:AddToggle({
	Name = 'CTRL + Click Tp V2',
	Value = false,
	Flag = 'clicktpctrl',
	Locked = false,
	Keybind = {
		Flag = 'keybindclicktp',
		Mode = 'Toggle',
	},

	Callback = function( clicktp )
		if ( clicktp ) then
			_G.clickTp2 = true
			local player = game:GetService("Players").LocalPlayer
			local UIS = game:GetService("UserInputService")
			local Mouse = player:GetMouse()

			local mt = getrawmetatable(game)
			setreadonly(mt, false)
			local old = mt.__index

			local deb = false  
			local opos = player.Character.HumanoidRootPart.CFrame

			mt.__index = newcclosure(function(self, key)
				if self == "HumanoidRootPart" and self.Parent == player.Character and key == "CFrame" and deb then
					return opos
				end
				return old(self, key)
			end)

			local function tp(newpos)
				if player.Character ~= nil and player.Character:FindFirstChild("HumanoidRootPart") ~= nil then
					opos = player.Character.HumanoidRootPart.CFrame
					deb = true
					player.Character.HumanoidRootPart.CFrame = CFrame.new(newpos)
					deb = false
				end
			end

			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.clickTp2 == true then
					tp(Mouse.Hit.p + Vector3.new(0, 3, 0))
				end
			end)
		else
			_G.clickTp2 = false
		end
	end
})


oldgravy23 = game.Workspace.Gravity
_G.clicktween = false
local clicktp = Player1:AddToggle({
	Name = 'CTRL + Click Tween',
	Value = false,
	Flag = 'clicktptweenrl',
	Locked = false,
	Keybind = {
		Flag = 'ke43erdflicktp',
		Mode = 'Toggle',
	},

	Callback = function( x )
		if ( x ) then
			_G.clicktween = true
			local UIS = game:GetService("UserInputService")
			plr = game.Players.LocalPlayer
			mouse = plr:GetMouse()

			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.clicktween == true then
					wait()
					for i,v in pairs(game.Workspace:GetChildren()) do
						if v.Name == "Tweenpaerr_NIGGASEXXXXXXXXXXXX_SIUt37rfjsd9fu4lKhdsrf8i3ksd" then 
							v:Destroy()
						end
					end
					wait()
					local Target = Instance.new("Part")
					Target.Parent = game.Workspace
					Target.Name = "Tweenpaerr_NIGGASEXXXXXXXXXXXX_SIUt37rfjsd9fu4lKhdsrf8i3ksd"
					Target.CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + 1.5, mouse.Hit.p.Z)
					Target.Transparency = 1
					Target.Anchored = true 
					Target.CanCollide = false
					wait()
					game.Workspace.Gravity = 0
					tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
					tween =
						tweenService:Create(
						game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
						tweenInfo,
						{CFrame = game.Workspace:WaitForChild("Tweenpaerr_NIGGASEXXXXXXXXXXXX_SIUt37rfjsd9fu4lKhdsrf8i3ksd").CFrame}
					)
					tween:Play()
					wait()
					game.Workspace.Gravity = oldgravy23
					for i,v in pairs(game.Workspace:GetChildren()) do
						if v.Name == "Tweenpaerr_NIGGASEXXXXXXXXXXXX_SIUt37rfjsd9fu4lKhdsrf8i3ksd" then 
							v:Destroy()
						end
					end
					game.Workspace.Gravity = oldgravy23
				end
			end)
		else
			_G.clicktween = false
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

_G.tpwalking = false
getgenv().CFrameSpeed = 2
local hb = game:GetService("RunService").Heartbeat
local cframefloat2 = Player1:AddToggle({
	Name = 'CFrame Speed',
	Value = false,
	Flag = '54trfgiukjfg',
	Locked = false,
	Keybind = {
		Flag = 'cferawtlaot21',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.tpwalking = true
			local chr = speaker.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while _G.tpwalking == true and chr and hum and hum.Parent do
				local delta = hb:Wait()
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection * getgenv().CFrameSpeed * delta * 10)
				end
			end
		else
			_G.tpwalking = false
		end
	end
})

--	getgenv().CFrameSpeed = 2.4
--	_G.cframefloat = false
--	local cframefloat = Player1:AddToggle({
--		Name = 'CFrame Speed',
--		Value = false,
--		Flag = '54trfgiukjfg',
--		Locked = false,
--		Keybind = {
--			Flag = 'cferawtlaot1',
--			Mode = 'Toggle',
--		},
--
--		Callback = function( state )
--			if ( state ) then
--				_G.cframefloat = true
--				Speed = getgenv().CFrameSpeed
--
--				You = game.Players.LocalPlayer.Name
--				UIS = game:GetService("UserInputService")
--
--				while _G.cframefloat == true do
--					if UIS:IsKeyDown(Enum.KeyCode.W) then
--						game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0,0,-Speed)
--					end;
--					if UIS:IsKeyDown(Enum.KeyCode.A) then
--						game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(-Speed,0,0)
--					end;
--					if UIS:IsKeyDown(Enum.KeyCode.S) then
--						game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0,0,Speed)
--					end;
--					if UIS:IsKeyDown(Enum.KeyCode.D) then
--						game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(Speed,0,0)
--					end;
--					wait()
--				end
--			else
--				_G.cframefloat = false
--			end
--		end
--	})
local TextBox = Player1:AddTextbox({
	Name = 'CFrame speed',
	Flag = "speed_cframe",
	Value = getgenv().CFrameSpeed,
	Callback = function( x ) 
		getgenv().CFrameSpeed = x
	end
})

local oldspeed = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed
getgenv().MaxSpeed = 30
getgenv().MixSpeed = oldspeed
getgenv().UpDelay = 1
getgenv().DownDely = 1

_G.SeakerEnabled = false
local heatseakerspeed = Player1:AddToggle({
	Name = 'HeatSeeker Speed',
	Value = false,
	Flag = 'heatstaskjhdf',
	Locked = false,
	Keybind = {
		Flag = 'cferhgot1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.SeakerEnabled = true
			while _G.SeakerEnabled == true do
				wait()
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().MixSpeed
				wait()
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = ( getgenv().MaxSpeed - getgenv().MixSpeed )
				wait( getgenv().UpDelay )
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().MaxSpeed
				wait( getgenv().DownDely )
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = ( getgenv().MaxSpeed - getgenv().MixSpeed )
			end
		else
			_G.SeakerEnabled = false
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = oldspeed
		end
	end
})
local TextBox = Player1:AddTextbox({
	Name = 'Max Speed',
	Flag = "43er90",
	Value = getgenv().MaxSpeed,
	Callback = function( x ) 
		getgenv().MaxSpeed = x
	end
})
local TextBox = Player1:AddTextbox({
	Name = 'Mix Speed',
	Flag = "erfjhdf",
	Value = getgenv().MixSpeed,
	Callback = function( x ) 
		getgenv().MixSpeed = x
	end
})
local TextBox = Player1:AddTextbox({
	Name = 'Up Delay',
	Flag = "54rekjhdf",
	Value = getgenv().UpDelay,
	Callback = function( x ) 
		getgenv().UpDelay = x
	end
})
local TextBox = Player1:AddTextbox({
	Name = 'Down Dely',
	Flag = "edfdgdfgd",
	Value = getgenv().DownDely,
	Callback = function( x ) 
		getgenv().DownDely = x
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

_G.FreezeAnims = false
local Freezeanims = Player3:AddToggle({
	Name = 'Stupid Animations',
	Value = false,
	Flag = 'Freezeaniumsd',
	Locked = false,
	Keybind = {
		Flag = 'c4354rfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.FreezeAnims = true
			while _G.FreezeAnims == true do
				wait()
				local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
				local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
				for _, v in pairs(ActiveTracks) do
					v:AdjustSpeed(0)
				end
			end
		else
			_G.FreezeAnims = false
			local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
			local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
			for _, v in pairs(ActiveTracks) do
				v:AdjustSpeed(1)
			end
		end
	end
})
local Disableanims = Player3:AddToggle({
	Name = 'Disable Animations',
	Value = false,
	Flag = 'DisableAnimations',
	Locked = false,
	Keybind = {
		Flag = 'c43rerfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
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
		else
			game.Players.LocalPlayer.Character.Animate.Disabled = false
		end
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
local nofacelkao = Player3:AddButton({
	Name = "No Face",
	Callback = function()
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v:IsA("Decal") and v.Name == 'face' then
				v:Destroy()
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
local nudesnaked = Player3:AddButton({
	Name = "Become Naked",
	Callback = function()
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
				v:Destroy()
			end
		end
	end
})


local animlable = Player3:CreateLabel({
	Text = 'States'
})



local tpplayer = Player4:AddTextbox({
	Name = 'Go to Player',
	Flag = "tptoplayers",
	Value = speaker.Name,
	Callback = function( plrTar )
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr2 ~= plr1 then
				plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame + Vector3.new(3,1,0)
			end
		end
	end
})
local tpplayer = Player4:AddButton({
	Name = "Go to Random Player",
	Callback = function()
		local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
			Vector3.new(
				randomPlayer.Character.Head.Position.X,
				randomPlayer.Character.Head.Position.Y,
				randomPlayer.Character.Head.Position.Z
			)
		)
	end
})

function gmode()
	game.Players.LocalPlayer.Character.Humanoid:Remove()
    Instance.new('Humanoid', game.Players.LocalPlayer.Character)
    game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass('Humanoid').HipHeight = 2
end

local godmode = Player4:AddButton({
	Name = "GodMode",
	Callback = function()
		gmode()
	end
})
_G.spamgmode = false
local spamgmode = Player4:AddToggle({
	Name = 'Spam Godmode',
	Value = false,
	Flag = 'spamgmodesdf',
	Locked = false,
	Keybind = {
		Flag = 'ni43erdft1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamgmode = true
			while _G.spamgmode == true do
				wait()
				gmode()
			end
		else
			_G.spamgmode = false
		end
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

local triplol = Player4:AddButton({
	Name = "Trip",
	Callback = function()
		if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
			local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
			local root = getRoot(speaker.Character)
			hum:ChangeState(0)
			root.Velocity = root.CFrame.LookVector * 30
		end
	end
})


function respawn(plr)
	if invisRunning then TurnVisible() end
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end
local refreshCmd = false
function refresh(plr)
	refreshCmd = true
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
		refreshCmd = false
	end)
end

local Respawn = Player4:AddButton({
	Name = "Respawn",
	Callback = function()
		respawn(speaker)
	end
})
local Refresh = Player4:AddButton({
	Name = "Refresh",
	Callback = function()
		refresh(speaker)
	end
})

_G.AntiAfk = false
local antiafk = Player4:AddToggle({
	Name = 'Anti Afk',
	Value = false,
	Flag = 'nit5erfgd1',
	Locked = false,
	Keybind = {
		Flag = 'nil43erdfcxgtrfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.AntiAfk = true
			local vu = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				if _G.AntiAfk == true then
					vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
					wait(1)
					vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				end
			end)
		else
			_G.AntiAfk = false
		end
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
_G.spamNilChar = false
local nilchar2 = Player4:AddToggle({
	Name = 'Spam Nil Character',
	Value = false,
	Flag = 'nilchar12',
	Locked = false,
	Keybind = {
		Flag = 'nill22222l1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamNilChar = true
			while _G.spamNilChar ==  true do
				wait()
				if speaker.Character ~= nil then
					speaker.Character.Parent = nil
				end
				wait()
				if speaker.Character ~= nil then
					speaker.Character.Parent = workspace
				end
			end
		else
			_G.spamNilChar = false
		end
	end
})

local freeze = Player4:AddToggle({
	Name = 'Freeze',
	Value = false,
	Flag = 'freezeisfunni',
	Locked = false,
	Keybind = {
		Flag = '4r8uijkfdfdgdfgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = true
				end
			end
		else
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
		end
	end
})
_G.spamfreeze = false
local randomfreeze = Player4:AddToggle({
	Name = 'Freeze Lag',
	Value = false,
	Flag = 'freezeisfunni2',
	Locked = false,
	Keybind = {
		Flag = '4r8uifgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamfreeze = true
			while _G.spamfreeze == true do
				wait()
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Anchored = true
					end
				end
				wait(math.random(0.002,0.5))
				for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Anchored = false
					end
				end
			end
		else
			_G.spamfreeze = false
			for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
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

local lightyesyes = Player4:AddToggle({
	Name = 'Light',
	Value = false,
	Flag = 'light23987hdf',
	Locked = false,
	Keybind = {
		Flag = 's43yhg8999un',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local light = Instance.new("PointLight")
			light.Parent = getRoot(speaker.Character)
			light.Range = 30
			light.Brightness = 5
		else
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v.ClassName == "PointLight" then
					v:Destroy()
				end
			end
		end
	end
})

getgenv().SpinSpeed = 20
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
			for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
				if v.Name == "Spinning" then
					v:Destroy()
				end
			end
			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "Spinning"
			Spin.Parent = getRoot(speaker.Character)
			Spin.MaxTorque = Vector3.new(0, math.huge, 0)
			Spin.AngularVelocity = Vector3.new(0,getgenv().SpinSpeed,0)
		else
			for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
				if v.Name == "Spinning" then
					v:Destroy()
				end
			end
		end
	end
})

local Slider = Player4:AddSlider({
	Name = 'Spin Speed',
	Flag = "Sping_speed_value",
	Value = 20,
	Min = 10,
	Max = 50,
	Decimals = 1,
	Callback = function( Spiin_speeed )
		getgenv().SpinSpeed = Spiin_speeed
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
local disabledahwo = Visuals1:AddButton({
	Name = "Disable Global Shadows",
	Callback = function()
		Lighting.GlobalShadows = false
	end
})
local disabledahwoNO = Visuals1:AddButton({
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

function lesslag()
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		coroutine.wrap(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end)
end

local lesslag = Visuals1:AddButton({
	Name = "Less lag",
	Callback = function()
		lesslag()
	end
})

local fixcam = Visuals1:AddButton({
	Name = "Fix Camera",
	Callback = function()
		workspace.CurrentCamera:remove()
		wait(.1)
		repeat wait() until speaker.Character ~= nil
		workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
		workspace.CurrentCamera.CameraType = "Custom"
		speaker.CameraMinZoomDistance = 0.5
		speaker.CameraMaxZoomDistance = 400
		speaker.CameraMode = "Classic"
		speaker.Character.Head.Anchored = false
	end
})

local shownParts = {}
local invisparts = Visuals1:AddToggle({
	Name = 'Show invis Parts',
	Value = false,
	Flag = 'infidsd87y',
	Locked = false,
	Keybind = {
		Flag = 'asfr453eernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and v.Transparency == 1 then
					if not table.find(shownParts,v) then
						table.insert(shownParts,v)
					end
					v.Transparency = 0
				end
			end
		else
			for i,v in pairs(shownParts) do
				v.Transparency = 1
			end
			shownParts = {}
		end
	end
})


getgenv().XrayTrans = 0.5
local transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = getgenv().XrayTrans
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end
local xray213324 = Visuals1:AddToggle({
	Name = 'XRay',
	Value = false,
	Flag = 'xray2opruhies',
	Locked = false,
	Keybind = {
		Flag = 'asfer45ernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			transparent = true
			x(transparent)
		else
			transparent = false
			x(transparent)
		end
	end
})
local chamtransda1 = Visuals1:AddSlider({
	Name = 'Xray Transparency',
	Flag = "s5tg_yoiDMldni4s",
	Value = getgenv().XrayTrans,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		getgenv().XrayTrans = y
	end
})

local nickspoofer = Visuals2:AddTextbox({
	Name = 'Dislay Name',
	Flag = "displayspfokf",
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

getgenv().FillColor = Color3.new(1, 0.666667, 0)
getgenv().FillTransparency = 0
getgenv().OutlineColor = Color3.new(1, 0.333333, 1)
getgenv().OutlineTransparency = 0

local cvhamslable = Visuals3:CreateLabel({
	Text = 'Chams'
})

local cgamesopCHAMS = Visuals3:AddToggle({
	Name = 'Chams',
	Value = false,
	Flag = 'rdiuygdf',
	Locked = false,
	Keybind = {
		Flag = 'as546frug453eerndf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local players = game.Players:GetPlayers()
			for i,v in pairs(players) do
			 	local esp = Instance.new("Highlight")
			 	esp.Name = "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf"
			 	esp.FillTransparency = getgenv().FillTransparency
			 	esp.FillColor = getgenv().FillColor
			 	esp.OutlineColor =getgenv().OutlineColor
			 	esp.OutlineTransparency = getgenv().OutlineTransparency
			 	esp.Parent = v.Character
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v.Name == "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf" then
					v:Destroy()
				end
			end
		end
	end
})
local CockerChalorPimdfu = Visuals3:AddColorPicker({
	Name = "Fill Color",
	Value = getgenv().FillColor,
	Callback = function( color )
		getgenv().FillColor = color
	end
})
local CeroChamdfkloru = Visuals3:AddColorPicker({
	Name = "Outline Color",
	Value = getgenv().OutlineColor,
	Callback = function( color )
		getgenv().OutlineColor = color
	end
})
local chamtransda1 = Visuals3:AddSlider({
	Name = 'Fill Transparency',
	Flag = "sli45tgdn_yoDMis",
	Value = getgenv().FillTransparency,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		getgenv().FillTransparency = y
	end
})
local chamtransda2 = Visuals3:AddSlider({
	Name = 'Outline Transparency',
	Flag = "sl4tooi8ytrr_DMs",
	Value = getgenv().OutlineTransparency,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		getgenv().OutlineTransparency = y
	end
})

local proximitypromptslabel = Visuals4:CreateLabel({
	Text = 'proximity prompts'
})

local PromptButtonHoldBegan = nil
instantproxpromts = Visuals4:AddToggle({
	Name = 'Instant proximity prompts',
	Value = false,
	Flag = 'rd4erfdygdf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			if fireproximityprompt then
				if PromptButtonHoldBegan ~= nil then
					PromptButtonHoldBegan:Disconnect()
					PromptButtonHoldBegan = nil
				end
				wait()
				PromptButtonHoldBegan = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
					fireproximityprompt(prompt)
				end)
			else
				Library.Notify({
					Text = "missing fireproximityprompt",
					Duration = 6
				})
			end
		else
			if PromptButtonHoldBegan ~= nil then
				PromptButtonHoldBegan:Disconnect()
				PromptButtonHoldBegan = nil
			end
		end
	end
})
noproximitypromptlimits = Visuals4:AddButton({
	Name = "No Proximity prompt limit",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ProximityPrompt") then
				v.MaxActivationDistance = math.huge
			end
		end
	end
})
fireproximityprompts = Visuals4:AddButton({
	Name = "Fire Proximity prompts",
	Callback = function()
		if fireproximityprompt then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ProximityPrompt") then
					fireproximityprompt(v)
				end
			end
		else
			Library.Notify({
				Text = "missing fireproximityprompt",
				Duration = 6
			})
		end
	end
})

local proximitypromptslabel = Visuals4:CreateLabel({
	Text = 'Click Detectors'
})

fireclickdetectors = Visuals4:AddButton({
	Name = "Fire Click Detectors",
	Callback = function()
		if fireclickdetector then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") then
					fireclickdetector(v)
				end
			end
		else
			Library.Notify({
				Text = "missing fireclickdetector",
				Duration = 6
			})
		end
	end
})
noclickdetectorlimits = Visuals4:AddButton({
	Name = "No Click Detector limit",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ClickDetector") then
				v.MaxActivationDistance = math.huge
			end
		end
	end
})

spectateasd = Visuals5:AddTextbox({
	Name = 'Player',
	Flag = "hfgchgdfhgg",
	Value = game.Players.LocalPlayer.Name,
	Multiline = false,
	Callback = function( plrTar )
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(plrTar)

		if plr2 then
			if plr2 ~= plr1 then
				game:GetService("Workspace").CurrentCamera.CameraSubject = plr2.HumanoidRootPart
			end
		end
	end
})
noclickdetectorlimits = Visuals5:AddButton({
	Name = "Stop Spectating",
	Callback = function()
		game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.HumanoidRootPart
	end
})


local Global = getgenv and getgenv() or _G
local sex1 = Funny1:AddButton({
	Name = "basic Bang",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			local number = "4966833843"

			if Global.Dancing == true then
				Global.Dancing = false
			end
		
			local aaa = 'rbxassetid://' .. number
		
			if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/sag/ReanimMain.lua'))()
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
	end
})
local sex1 = Funny1:AddButton({
	Name = "Pushups",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			local number = "4966881089"

			if Global.Dancing == true then
				Global.Dancing = false
			end
		
			local aaa = 'rbxassetid://' .. number
		
			if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/sag/ReanimMain.lua'))()
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
	end
})
local sex1 = Funny1:AddButton({
	Name = "Bend Over",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			local number = "4966882047"

			if Global.Dancing == true then
				Global.Dancing = false
			end
		
			local aaa = 'rbxassetid://' .. number
		
			if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/sag/ReanimMain.lua'))()
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
	end
})
local sex1 = Funny1:AddButton({
	Name = "lying Down",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			local number = "4966879039"

			if Global.Dancing == true then
				Global.Dancing = false
			end
		
			local aaa = 'rbxassetid://' .. number
		
			if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/sag/ReanimMain.lua'))()
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
	end
})
local sex1 = Funny1:AddButton({
	Name = "Blowjob",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
		local number = "4963373273"

		if Global.Dancing == true then
			Global.Dancing = false
		end
	
		local aaa = 'rbxassetid://' .. number
	
		if (not Global.CloneRig) or game.Players.LocalPlayer.Character ~= Global.CloneRig then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/sag/ReanimMain.lua'))()
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
	end
})

local neko1lolololololl = Funny2:AddButton({
	Name = "Neko V4",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/nekov4.lua'))()
		end
	end
})
local nekov5loloolool = Funny2:AddButton({
	Name = "Neko V5",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/nekov5.lua'))()
		end
	end
})
local RoadRogulollololole = Funny2:AddButton({
	Name = "Road Rogue",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/roadrouge.lua'))()
		end
	end
})

local Katanarist10fgdg = Funny2:AddButton({
	Name = "Katanarist",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/katanarist.lua'))()
		end
	end
})

local Ass3465assin = Funny2:AddButton({
	Name = "Assassin",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/assassin.lua'))()
		end
	end
})

local idkwhatthisisStratoGlitcher = Funny2:AddButton({
	Name = "Strato Glitcher",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/glitcher.lua'))()
		end
	end
})

local Studio_Dummy_q34V3 = Funny2:AddButton({
	Name = "Studio Dummy V3",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/animations/coffee/studiodummy.lua'))()
		end
	end
})


--// propertites
getgenv().WayPointTransparency = 1
getgenv().WayPointCanCollide = false
getgenv().WayPointAnchored = true

--// values
getgenv().TweenModeIsActive = false
getgenv().TweenDelay = 5

local settingslabelwaypoint = Misc1:CreateLabel({
	Text = 'Settings'
})

local Waypoints_visible = Misc1:AddSlider({
	Name = 'Transparency',
	Flag = "slide_in_transs_pussy",
	Value = 0,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( trans )
		getgenv().WayPointTransparency = trans
	end
})
local Waypoints_CanCollide = Misc1:AddToggle({
	Name = 'Can Collide',
	Value = false,
	Flag = 'CanCollideiudfg',
	Locked = true,
	Keybind = {
		Flag = '4erf243',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			getgenv().WayPointCanCollide = true
		else
			getgenv().WayPointCanCollide = false
		end
	end
})
local Waypoints_Anchored = Misc1:AddToggle({
	Name = 'Anchored',
	Value = true,
	Flag = 'Anchorediudfg',
	Locked = true,
	Keybind = {
		Flag = '4erf3frds',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			getgenv().WayPointAnchored = true
		else
			getgenv().WayPointAnchored = false
		end
	end
})
local tween_mode = Misc1:AddToggle({
	Name = 'Tween Mode',
	Value = false,
	Flag = 'tweningjdhu',
	Locked = false,
	Keybind = {
		Flag = '4refdiukj4erdfrff',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			getgenv().TweenModeIsActive = true
		else
			getgenv().TweenModeIsActive = false
		end
	end
})
local tweendelLMAO = Misc1:AddSlider({
	Name = 'Tween delay',
	Flag = "tween_is_gay",
	Value = 5,
	Min = 1,
	Max = 30,
	Decimals = 2,
	Callback = function( trans )
		getgenv().TweenDelay = trans
	end
})

function waypoint1()
	local waypoint1 = Instance.new("Part")
	waypoint1.Name = "wayPoint1_NIGGA_SEX_FUCKER"
	waypoint1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	waypoint1.Parent = game.Workspace
	waypoint1.Anchored = getgenv().WayPointAnchored
	waypoint1.CanCollide = getgenv().WayPointCanCollide
	waypoint1.Transparency = getgenv().WayPointTransparency
	waypoint1.Size = Vector3.new(0.5, 0.5, 0.5)
	niggawaypoint1 = game.Workspace:WaitForChild("wayPoint1_NIGGA_SEX_FUCKER")
end
function waypoint2()
	local waypoint2 = Instance.new("Part")
	waypoint2.Name = "wayPoint2_NIGGA_SEX_FUCKER"
	waypoint2.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	waypoint2.Parent = game.Workspace
	waypoint2.Anchored = getgenv().WayPointAnchored
	waypoint2.CanCollide = getgenv().WayPointCanCollide
	waypoint2.Transparency = getgenv().WayPointTransparency
	waypoint2.Size = Vector3.new(0.5, 0.5, 0.5)
end
function waypoint3()
	local waypoint3 = Instance.new("Part")
	waypoint3.Name = "wayPoint3_NIGGA_SEX_FUCKER"
	waypoint3.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	waypoint3.Parent = game.Workspace
	waypoint3.Anchored = getgenv().WayPointAnchored
	waypoint3.CanCollide = getgenv().WayPointCanCollide
	waypoint3.Transparency = getgenv().WayPointTransparency
	waypoint3.Size = Vector3.new(0.5, 0.5, 0.5)
end

local createlabelwaypoint = Misc1:CreateLabel({
	Text = 'Create'
})

local createwayPoint1 = Misc1:AddButton({
	Name = "Create Waypoint 1",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint1_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
		wait()
		waypoint1()
	end
})
local createwayPoint2 = Misc1:AddButton({
	Name = "Create Waypoint 2",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint2_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
		wait()
		waypoint2()
	end
})
local createwayPoint3 = Misc1:AddButton({
	Name = "Create Waypoint 3",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint3_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
		wait()
		waypoint3()
	end
})

local destroylabelwaypoint = Misc1:CreateLabel({
	Text = 'Destroy'
})

local noPoint1 = Misc1:AddButton({
	Name = "Destroy Waypoint 1",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint1_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
	end
})
local noPoint2 = Misc1:AddButton({
	Name = "Destroy Waypoint 2",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint2_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
	end
})
local noPoint3 = Misc1:AddButton({
	Name = "Destroy Waypoint 3",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint3_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
	end
})
local noPoint = Misc1:AddButton({
	Name = "Destroy All Waypoint",
	Callback = function()
		for _,nigga in pairs(game.Workspace:GetDescendants()) do
			if nigga.Name == "wayPoint3_NIGGA_SEX_FUCKER" or
			nigga.Name == "wayPoint2_NIGGA_SEX_FUCKER" or
			nigga.Name == "wayPoint1_NIGGA_SEX_FUCKER" then
				nigga:Destroy()
			end
		end
	end
})

local Controllabelwaypoint = Misc1:CreateLabel({
	Text = 'Control'
})

function tweenMode1()
	game.workspace.Gravity = 0
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(getgenv().TweenDelay, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = game.Workspace:WaitForChild("wayPoint1_NIGGA_SEX_FUCKER").CFrame}
    )
    tween:Play()
	game.workspace.Gravity = 196.2
end
function tweenMode2()
	game.workspace.Gravity = 0
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(getgenv().TweenDelay, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = game.Workspace:WaitForChild("wayPoint2_NIGGA_SEX_FUCKER").CFrame}
    )
    tween:Play()
	game.workspace.Gravity = 196.2
end 
function tweenMode3()
	game.workspace.Gravity = 0
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(getgenv().TweenDelay, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = game.Workspace:WaitForChild("wayPoint3_NIGGA_SEX_FUCKER").CFrame}
    )
    tween:Play()
	game.workspace.Gravity = 196.2
end 


local goPoint1 = Misc1:AddButton({
	Name = "To Waypoint 1",
	Callback = function()
		if getgenv().TweenModeIsActive == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace:WaitForChild("wayPoint1_NIGGA_SEX_FUCKER").CFrame
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			for i = 1,100 do
				task.wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(niggawaypoint1.X, niggawaypoint1.Y, niggawaypoint1.Z)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
			end
		elseif getgenv().TweenModeIsActive == true then
			game.workspace.Gravity = 0
			tweenMode1()
		end
	end
})
local goPoint2 = Misc1:AddButton({
	Name = "To Waypoint 2",
	Callback = function()
		if getgenv().TweenModeIsActive == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace:WaitForChild("wayPoint2_NIGGA_SEX_FUCKER").CFrame
		elseif getgenv().TweenModeIsActive == true then
			game.workspace.Gravity = 0
			tweenMode2()
		end
	end
})
local goPoint3 = Misc1:AddButton({
	Name = "To Waypoint 3",
	Callback = function()
		if getgenv().TweenModeIsActive == false then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace:WaitForChild("wayPoint3_NIGGA_SEX_FUCKER").CFrame
		elseif getgenv().TweenModeIsActive == true then
			game.workspace.Gravity = 0
			tweenMode3()
		end
	end
})

_G.BreadCrumbs = false

--\\ settings
getgenv().BallDelay = 0.001
getgenv().BallSize = 0.4
getgenv().BallTransparency = 0
getgenv().BallShape = "Ball"
getgenv().SmoothDestroy = false

local breadcrumsbs = Misc2:AddToggle({
	Name = 'BreadCrumbs',
	Value = false,
	Flag = 'nilchbreadcrueadcrumsbsbrmsbsar1',
	Locked = false,
	Keybind = {
		Flag = 'nilbreadsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			_G.BreadCrumbs = true
			while _G.BreadCrumbs == true do
				wait(getgenv().BallDelay)
				local breadball = Instance.new("Part")
				breadball.Shape = getgenv().BallShape
				breadball.Parent = game.Workspace
				yeyesy = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				breadball.CFrame = CFrame.new(yeyesy.Position.X, yeyesy.Position.Y - 1.7, yeyesy.Position.Z)
				breadball.Name = "breadcrumbs_NIGGA"
				breadball.CanCollide = false
				breadball.Anchored = true
				breadball.Size = Vector3.new(getgenv().BallSize ,getgenv().BallSize, getgenv().BallSize)
				breadball.Material = "Neon"
				breadball.BrickColor = BrickColor.new("Really red")
				breadball.Transparency = getgenv().BallTransparency
			end
		else
			_G.BreadCrumbs = false
			wait()
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "breadcrumbs_NIGGA" then
					v:Destroy()
					if getgenv().SmoothDestroy == true then
						wait()
						v:Destroy()
					end
				end
			end
		end
	end
})
local breadcrumsbssmooth = Misc2:AddToggle({
	Name = 'Smooth Destroy',
	Value = false,
	Flag = 'nil4r1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			getgenv().SmoothDestroy = true
		else
			getgenv().SmoothDestroy = false
		end
	end
})
local BallDelay = Misc2:AddSlider({
	Name = 'Delay',
	Flag = "slide_in_your_DMs4refd",
	Value = 0.001,
	Min = 0.001,
	Max = 0.5,
	Decimals = 5,
	llegalInput = false,
	Callback = function( BallDelay )
		getgenv().BallDelay = BallDelay
	end
})
local BallSize = Misc2:AddSlider({
	Name = 'Size',
	Flag = "slide_in_your_DMstfg",
	Value = 0.4,
	Min = 0.1,
	Max = 1,
	Decimals = 4,
	llegalInput = false,
	Callback = function( BallSize )
		getgenv().BallSize = BallSize
	end
})
local BallTransparency = Misc2:AddSlider({
	Name = 'Transparency',
	Flag = "slide_in_your_DMslkjbvcx",
	Value = 0,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function( BallTransparency )
		getgenv().BallTransparency = BallTransparency
	end
})
local breamselecter = Misc2:AddDropdown({
	Name = 'Type',
	Flag = "balstyprniggaseex",
	Multi = false,
	List = {
		"Ball",
		"Block"
	},
	Callback = function( WHAT_THE_FUCK )
		getgenv().BallShape = WHAT_THE_FUCK
	end
})

getgenv().Lifetime = 9e9
getgenv().MaxLength = 9e9
getgenv().MinLength = 0
getgenv().FaceCamera = true


local breadcrumsbs2 = Misc3:AddToggle({
	Name = 'BreadCrumbs Trail',
	Value = false,
	Flag = 'nilchbreadcrueadcruar1',
	Locked = false,
	Keybind = {
		Flag = 'nilbreadcrumsbsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			local trail = Instance.new("Trail")
			for k,v in pairs({
				Lifetime = getgenv().Lifetime,
				MaxLength = getgenv().MaxLength,
				MinLength = getgenv().MinLength,
				FaceCamera = getgenv().FaceCamera,
				Enabled = true,
				Name = "ilovehairyoilyniggas",
				Attachment0 = root:FindFirstChildOfClass("Attachment"),
				Attachment1 = root.Parent.Head:FindFirstChildOfClass("Attachment"),
				Parent = root}) do
				trail[k] = v 
			end
		else
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:GetDescendants()) do
				if v.Name == "ilovehairyoilyniggas" then
					v:Destroy()
				end
			end
		end
	end
})
local breadtrail1 = Misc3:AddToggle({
	Name = 'Face Camera',
	Value = true,
	Flag = 'fdauoiudfg',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			getgenv().FaceCamera = true
		else
			getgenv().FaceCamera = false
		end
	end
})
local breadtrail2 = Misc3:AddTextbox({
	Name = 'LifeTime',
	Flag = "pro_flagiufuckyg",
	Value = getgenv().Lifetime,
	Multiline = true,
	Callback = function( x )
		getgenv().Lifetime = x
	end
})
local breadtrail3 = Misc3:AddTextbox({
	Name = 'MaxLength',
	Flag = "pro_flagiuyg",
	Value = getgenv().MaxLength,
	Multiline = true,
	Callback = function( x )
		getgenv().MaxLength = x
	end
})
local breadtrail4 = Misc3:AddSlider({
	Name = 'MinLength',
	Flag = "slide_in_your_DMsl3kjbvcx",
	Value = 0,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function( x )
		getgenv().MinLength = x
	end
})


local enlerespawn = Misc4:AddToggle({
	Name = 'Enable Respawn Button',
	Value = true,
	Flag = 'nilfrgr1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		else
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
		end
	end
})

local antikick = Misc4:AddButton({
	Name = "Anti Client kick    ",
	Callback = function()
		local LocalPlayer = game.Players.LocalPlayer
		local oldhmmi
		local oldhmmnc
		oldhmmi = hookmetamethod(game, "__index", function(self, method)
			if self == LocalPlayer and method:lower() == "kick" then
				return error("Expected ':' not '.' calling member function Kick", 2)
			end
			return oldhmmi(self, method)
		end)
		oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
			if self == LocalPlayer and getnamecallmethod():lower() == "kick" then
				return
			end
			return oldhmmnc(self, ...)
		end)
		wait()
		Library.Notify({
			Text = "Local kicks Disabled",
			Duration = 10
		})
	end
})
local anticlirnttp = Misc4:AddButton({
	Name = "Anti Client Teleport",
	Callback = function()
		local TeleportService = TeleportService
		local oldhmmi
		local oldhmmnc
		oldhmmi = hookmetamethod(game, "__index", function(self, method)
			if self == TeleportService then
				if method:lower() == "teleport" then
					return error("Expected ':' not '.' calling member function Kick", 2)
				elseif method == "TeleportToPlaceInstance" then
					return error("Expected ':' not '.' calling member function TeleportToPlaceInstance", 2)
				end
			end
			return oldhmmi(self, method)
		end)
		oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
			if self == TeleportService and getnamecallmethod():lower() == "teleport" or getnamecallmethod() == "TeleportToPlaceInstance" then
				return
			end
			return oldhmmnc(self, ...)
		end)
		Library.Notify({
			Text = "Local teleports Disabled",
			Duration = 10
		})
	end
})
local shiftlockyes = Misc4:AddButton({
	Name = "Enable Shift Lock",
	Callback = function()
		speaker.DevEnableMouseLock = true
		Library.Notify({
			Text = "Shift lock is now available.. i hope  ",
			Duration = 10
		})
	end
})
--local ancdiabled = Misc4:AddButton({
--	Name = "Gmode Ac Disabler",
--	Callback = function()
--		gmode()
--		wait(3)
--		workspace.CurrentCamera:remove()
--		wait(.1)
--		repeat wait() until speaker.Character ~= nil
--		workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
--		workspace.CurrentCamera.CameraType = "Custom"
--		speaker.CameraMinZoomDistance = 0.5
--		speaker.CameraMaxZoomDistance = 400
--		speaker.CameraMode = "Classic"
--		speaker.Character.Head.Anchored = false
--	end
--})

getgenv().Message = "string"
getgenv().Delay = 1

_G.ChatSpam = false
local chatspamRwuygdf = Misc6:AddToggle({
	Name = 'Chat Spammer',
	Value = false,
	Flag = 'nchatasoammerrgr1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			_G.ChatSpam = true
			while _G.ChatSpam == true do
				wait()
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(getgenv().Message, "All")
				wait(getgenv().Delay)
			end
		else
			_G.ChatSpam = false
		end
	end
})
local message = Misc6:AddTextbox({
	Name = 'Message',
	Flag = "pniggerdsg",
	Value = "Vo is hot :3",
	Callback = function( x )
		getgenv().Message = x
	end
})
local meaggadrdelay = Misc6:AddSlider({
	Name = 'Delay',
	Flag = "slSYUSs",
	Value = 1,
	Min = 0.1,
	Max = 20,
	Decimals = 2,
	Callback = function( x )
		getgenv().Delay = x
	end
})

local Players = game.Players
local exitgames = Misc7:AddButton({
	Name = "Exit Game",
	Callback = function()
		game:Shutdown()
	end
})
local rejoinyesyes = Misc7:AddButton({
	Name = "Rejoin Game",
	Callback = function()
		game.Players.LocalPlayer:Kick("\nRejoining...")

		local tpservice = game:GetService("TeleportService")
		local plr = game.Players.LocalPlayer
		tpservice:Teleport(game.PlaceId, plr)
	end
})

_G.AutoRejoin = false
local rejoinyesyes = Misc7:AddToggle({
	Name = 'Auto Rejoin',
	Value = false,
	Flag = 'nchatgr1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			_G.AutoRejoin = true
			repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')

			local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')

			po.ChildAdded:connect(function(a)
				if a.Name == 'ErrorPrompt' and _G.AutoRejoin == true then
					repeat
						ts:Teleport(game.PlaceId)
						wait(2)
					until false
				end
			end)
		else
			_G.AutoRejoin = false
		end
	end
})

getgenv().FaggotTransparency = 0.5
getgenv().FaggotSizeX = 3
getgenv().FaggotSizeY = 5
getgenv().FaggotSizeZ = 3
getgenv().FaggotColor = Color3.new(115, 15, 180)
getgenv().VeiwFaggot = true

local hidechar = Misc8:AddToggle({
	Name = 'Hide Character',
	Value = false,
	Flag = 'njhgfhjdrfgd1',
	Locked = false,
	Keybind = {
		Flag = '54i54recxgtrfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			faggot = game.Players.LocalPlayer.Character.HumanoidRootPart
			faggot.CFrame = CFrame.new(0, 99999999, 0)
			faggot.Anchored = true
			faggotpart = Instance.new("Part")
			faggotpart.Size = Vector3.new(getgenv().FaggotSizeX, getgenv().FaggotSizeY, getgenv().FaggotSizeZ)
			faggotpart.Anchored = true
			
			faggotpart.Material = Enum.Material.Neon
			faggotpart.Transparency = getgenv().FaggotTransparency
			faggotpart.CFrame = oldcf
			faggotpart.CanCollide = false
			faggotpart.Parent = game:GetService("Workspace")
			if getgenv().VeiwFaggot == true then
				game:GetService("Workspace").CurrentCamera.CameraSubject = faggotpart
			end
			while state == true do
				wait()
				faggotpart.Color = getgenv().FaggotColor
			end
		else
			faggot.Anchored = false
			faggot.CFrame = oldcf
			faggotpart:Destroy()
			game:GetService("Workspace").CurrentCamera.CameraSubject = faggot
		end
	end
})

settingssad3dasdsdf = Misc8:CreateLabel({
	Text = 'Settings'
})

hidechar2 = Misc8:AddToggle({
	Name = 'View Part',
	Value = true,
	Flag = 'njrfgd1',
	Locked = false,
	Keybind = {
		Flag = '54irfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			getgenv().VeiwFaggot = true
		else
			getgenv().VeiwFaggot = false
		end
	end
})

hidechar3 = Misc8:AddSlider({
	Name = 'Transparency',
	Flag = "sliMslkjbvcx",
	Value = 0.5,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function( y )
		getgenv().FaggotTransparency = y
	end
})

hidechar22 = Misc8:AddTextbox({
	Name = 'X Axis Value',
	Flag = "pnigge",
	Value = 3,
	Callback = function( x )
		getgenv().FaggotSizeX = x
	end
})
hidechar24 = Misc8:AddTextbox({
	Name = 'Y Axis Value',
	Flag = "pniggerdsgefs",
	Value = 5,
	Callback = function( x )
		getgenv().FaggotSizeY = x
	end
})
hidechar26 = Misc8:AddTextbox({
	Name = 'Z Axis Value',
	Flag = "pniggerdsg35eg",
	Value = 3,
	Callback = function( x )
		getgenv().FaggotSizeZ = x
	end
})
hidechar26E = Misc8:AddColorPicker({
	Name = "part Color",
	Value = Color3.new(115, 15, 180),
	Callback = function( color )
		getgenv().FaggotColor = color
	end
})

dev1 = Credits1:CreateLabel({
	Text = 'Vo | Main Dev'
})


Scripter1 = Credits2:CreateLabel({
	Text = 'sx65 | Fly'
})
Scripter2 = Credits2:CreateLabel({
	Text = 'zurewrath | Old CFrame Speed'
})
Scripter3 = Credits2:CreateLabel({
	Text = 'TheYoyo | Free Cam'
})
Scripte4 = Credits2:CreateLabel({
	Text = 'JjsploitScripts | Chams'
})
Scripter5 = Credits2:CreateLabel({
	Text = 'CoffeeWare | Sex Animations'
})



Cool1 = Credits3:CreateLabel({
	Text = 'E009'
})
Cool2 = Credits3:CreateLabel({
	Text = 'cqc Demoted'
})
Cool3 = Credits3:CreateLabel({
	Text = 'Noro'
})
Cool4 = Credits3:CreateLabel({
	Text = 'joJo'
})
Cool5 = Credits3:CreateLabel({
	Text = 'Someone is here'
})
Cool6 = Credits3:CreateLabel({
	Text = 'Azura'
})



copydc = Credits4:AddButton({
	Name = "Copy Discord Invite",
	Callback = function()
		setclipboard('https://discord.gg/NbUUucBXhq')
		Library.Notify({
			Text = "invite Copied to clipboard",
			Duration = 6
		})
	end
})





Library.Notify({
	Text = "loaded in "..tick() - executiontime .. " seconds   ",
	Duration = 5
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/extras.lua"))()