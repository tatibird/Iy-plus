repeat 
	task.wait() 
until game:IsLoaded()

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

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/repo/NewLib.lua"))()
Libraryflags = Library.flags
local speaker = game.Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local Camera = workspace.CurrentCamera
local ProximityPromptService = game:GetService("ProximityPromptService")
origsettings = {
	abt = Lighting.Ambient,
	oabt = Lighting.OutdoorAmbient,
	brt = Lighting.Brightness,
	time = Lighting.ClockTime,
	fe = Lighting.FogEnd,
	fs = Lighting.FogStart,
	gs = Lighting.GlobalShadows
}

if syn then
	function print(v)
		printconsole(v)
	end
end
function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

--[[
local array = loadstring(game:HttpGet("https://raw.githubusercontent.com/AllahbloxLeaks/MemzwareAllahLeak/main/ArrayList.lua"))()
shared["CometConfigs"] = {
    Enabled = false
}
]]

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
	Name = 'Fling',
	Side = 'Left'
})
local Funny5 = FunTab:CreateSection({
	Name = 'Misc',
	Side = 'Left'
})
local Funny6 = FunTab:CreateSection({
	Name = 'Cosmetics',
	Side = 'Right'
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
local Misc9 = MiscTab:CreateSection({
	Name = 'HitBox',
	Side = 'Right'
})

Credits1 = CreditsTab:CreateSection({
	Name = 'Developer',
	Side = 'Left'
})
Credits2 = CreditsTab:CreateSection({
	Name = 'Best Scripter',
	Side = 'Left'
})
Credits3 = CreditsTab:CreateSection({
	Name = 'Cool people',
	Side = 'Left'
})
Credits4 = CreditsTab:CreateSection({
	Name = 'Discord',
	Side = 'Right'
})


togglespeed = Player0:AddToggle({
	Name = 'Toggle Speed',
	Value = false,
	Flag = 'togglespeed1',
	Locked = false,
	Keybind = {
		Flag = 'togglespeed2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldspd = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed
			wait()
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().Speed_toggl	
		else
			task.wait()
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = oldspd
		end
	end
})
togglejp = Player0:AddToggle({
	Name = 'Toggle Jump power',
	Value = false,
	Flag = 'togglehp1',
	Locked = false,
	Keybind = {
		Flag = 'togglJHPd2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldjp = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower
			wait()
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = getgenv().jumppower_toggle	
		else
			task.wait()
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = oldjp
		end
	end
})
togglegrav = Player0:AddToggle({
	Name = 'Toggle Gravity',
	Value = false,
	Flag = 'togglegrav1',
	Locked = false,
	Keybind = {
		Flag = 'togglgravity2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgr = game:GetService("Workspace").Gravity
			wait()
			game:GetService("Workspace").Gravity = getgenv().gravity_toggle	
		else
			task.wait()
			game:GetService("Workspace").Gravity = oldgr
		end
	end
})
togglemaxslopeangle = Player0:AddToggle({
	Name = 'Toggle slope angle',
	Value = false,
	Flag = 'toggmss1',
	Locked = false,
	Keybind = {
		Flag = 'togglgmLLKy2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldmsa = speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle
			wait()
			speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle = getgenv().maxSlopeAngle_toggle	
		else
			task.wait()
			speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle = oldmsa
		end
	end
})
togglehipheight = Player0:AddToggle({
	Name = 'Toggle Hip Height',
	Value = false,
	Flag = 'togglehh1',
	Locked = false,
	Keybind = {
		Flag = 'togglghh2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldhh = speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight
			wait()
			speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = getgenv().hipHeigh_toggle	
		else
			task.wait()
			speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = oldhh
		end
	end
})
togglefov = Player0:AddToggle({
	Name = 'Toggle FOV',
	Value = false,
	Flag = 'togglefov1',
	Locked = false,
	Keybind = {
		Flag = 'togglgfov2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldfov = workspace.CurrentCamera.FieldOfView
			wait()
			workspace.CurrentCamera.FieldOfView = getgenv().fov_toggle
		else
			task.wait()
			workspace.CurrentCamera.FieldOfView = oldfov
		end
	end
})

Speed1 = Player0:AddTextbox({
	Name = 'Modify Speed',
	Flag = "speed_walkspeed",
	Value = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed,
	Multiline = true,
	Callback = function(x)
		getgenv().Speed_toggl = x
	end
})

jumpPower1 = Player0:AddTextbox({
	Name = 'Modify JumpPower',
	Flag = "jumppower12",
	Value = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower,
	Multiline = true,
	Callback = function(x)
		getgenv().jumppower_toggle = x
	end
})

garv = Player0:AddTextbox({
	Name = 'Modify Gravity',
	Flag = "garvityworkspace",
	Value = game.Workspace.Gravity,
	Multiline = true,
	Callback = function(x)
		getgenv().gravity_toggle = x
	end
})

maxslope = Player0:AddTextbox({
	Name = 'Modify Max lope Angle',
	Flag = "4rft65ytgo",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle,
	Multiline = true,
	Callback = function( x )
		getgenv().maxSlopeAngle_toggle = x
	end
})

hiphieghyt = Player0:AddTextbox({
	Name = 'Modify Hip height',
	Flag = "65ythglkj",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,
	Multiline = true,
	Callback = function( x )
		getgenv().hipHeigh_toggle = x
	end
})

fov1 = Player0:AddTextbox({
	Name = 'Modify FOV',
	Flag = "65y54trfgtj",
	Value = workspace.CurrentCamera.FieldOfView,
	Multiline = true,
	Callback = function( x )
		getgenv().fov_toggle = x
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

step = false
stepexploit = Player1:AddToggle({
	Name = 'Step',
	Value = false,
	Flag = 'stepp',
	Locked = false,
	Keybind = {
		Flag = '4tdrgsytsterp',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			step = true

			repeat wait()
				local currentTorso = nil
				function findT()
					if speaker.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
						currentTorso = speaker.Character.UpperTorso
					elseif speaker.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
						currentTorso = speaker.Character.Torso
					end
				end
				findT()
				if currentTorso == nil then
					findT()
				end
				currentTorso.Touched:Connect(function(hit)
					if step == true then
						local cmdlpHRP = speaker.Character.HumanoidRootPart
						if hit:IsA("BasePart") and hit.Position.Y > cmdlpHRP.Position.Y - speaker.Character.Humanoid.HipHeight then
							local findHRP = hit.Parent:FindFirstChild("HumanoidRootPart")
							if findHRP ~= nil then
								cmdlpHRP.CFrame = hit.CFrame * CFrame.new(cmdlpHRP.CFrame.lookVector.X,findHRP.Size.Z/2 + speaker.Character.Humanoid.HipHeight,cmdlpHRP.CFrame.lookVector.Z)
							elseif findHRP == nil then
								cmdlpHRP.CFrame = hit.CFrame * CFrame.new(cmdlpHRP.CFrame.lookVector.X,hit.Size.Y/2 + speaker.Character.Humanoid.HipHeight,cmdlpHRP.CFrame.lookVector.Z)
							end
						end
					end
				end)
			until step == false
		else
			step = false
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
			local Player = game:GetService'Players'.LocalPlayer
			local UIS = game:GetService'UserInputService'
 
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
					v2target = Mouse.Hit.p
					tp(v2target + Vector3.new(0, 3, 0))
					task.wait(0.5)
					tp(v2target + Vector3.new(0, 3, 0))
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

--[[_G.Fly = false
local infjump = Player1:AddToggle({
	Name = 'Fly',
	Value = false,
	Flag = 'iflyweeee',
	Locked = false,
	Keybind = {
		Flag = 'kegfjFLYp',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.Fly = true
			
		else
			_G.Fly = false
		end
	end
})
]]
lplr = game.Players.LocalPlayer
_G.gjump = false
local gfly = Player1:AddToggle({
	Name = 'Gravity Air Boost',
	Value = false,
	Flag = 'fghighfhgpy',
	Locked = false,
	Keybind = {
		Flag = 'kefuhg33dfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.gjump = true
			task.spawn(function()
                repeat
                    task.wait(0.1)
                    if _G.gjump == false then break end
                    lplr.character.HumanoidRootPart.Velocity = lplr.character.HumanoidRootPart.Velocity + Vector3.new(0,35,0)
                until _G.gjump == false
            end)
		else
			_G.gjump = false
		end
	end
})


_G.gflyiing = false
local gfly = Player1:AddToggle({
	Name = 'Goofy Fly',
	Value = false,
	Flag = 'flybypassgoofy',
	Locked = false,
	Keybind = {
		Flag = 'kefuhgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.gflyiing = true
			while _G.gflyiing == true do
				task.wait()
				workspace.Gravity = 2
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Freefall")
				wait(0.000000000000001)
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Running")
				wait(0.000000000000001)
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Climbing")
				wait(0.000000000000001)
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Swimming")
				wait(0.000000000000001)
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Landed")
				wait(0.000000000000001)
			end
		else
			workspace.Gravity = 196.19999694824
			_G.gflyiing = false
		end
	end
})


Mode = "old"
_G.funnifly = false
funnifly = Player1:AddToggle({
	Name = 'VClip Fly',
	Value = false,
	Flag = 'sofbfypsglyaoyFUNNI',
	Locked = false,
	Keybind = {
		Flag = 'f54u8sdds',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.funnifly = true
			velo = Instance.new("BodyVelocity")
			velo.MaxForce = Vector3.new(0,9e9,0)
			velo.Parent = lplr.Character:FindFirstChild("HumanoidRootPart")

			spawn(function()
				repeat
					if Mode == "old" then
						velo.Velocity = Vector3.new(0,0,0)
						task.wait()
						velo.Velocity = Vector3.new(0,0,0)
						task.wait()
					end
				until _G.funnifly == false
			end)
		else
			for i,v in pairs(lplr.Character:FindFirstChild("HumanoidRootPart"):GetChildren()) do
				if v:IsA("BodyVelocity") then
					v:Destroy()
				end
			end
			_G.funnifly = false
		end
	end
})

local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(input)
    if UIS:IsKeyDown(Enum.KeyCode.Space) and _G.funnifly == true then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
    end
end)
UIS.InputBegan:Connect(function(input)
    if UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.funnifly == true then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, - 2, 0)
    end
end)

IYMouse = game.Players.LocalPlayer:GetMouse()
Players = game:GetService("Players")
FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1
function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local iyfly = Player1:AddToggle({
	Name = 'Classic Fly',
	Value = false,
	Flag = '54trfgius',
	Locked = false,
	Keybind = {
		Flag = 'cfe2aot21',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			NOFLY()
			task.wait()
			sFLY()
		else
			NOFLY()
		end
	end
})

local iyflyv2 = Player1:AddToggle({
	Name = 'Vehicle Fly',
	Value = false,
	Flag = '54trfgius2',
	Locked = false,
	Keybind = {
		Flag = 'cfe2aot21vehi',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			NOFLY()
			wait()
			sFLY(true)
		else
			NOFLY()
		end
	end
})

local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}
function RunLoops:BindToHeartbeat(name, num, func)
	if RunLoops.HeartTable[name] == nil then
		RunLoops.HeartTable[name] = game:GetService("RunService").Heartbeat:connect(func)
	end
end

_G.fflyiing = false
local gfly = Player1:AddToggle({
	Name = 'Boost Air Jump ',
	Value = false,
	Flag = 'flsadybypasszr',
	Locked = false,
	Keybind = {
		Flag = 'rg354',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.fflyiing = true
			lplr.Character.Archivable = true
			local clonethingy = lplr.Character:Clone()
			clonethingy.Name = "clonethingy"
			clonethingy:FindFirstChild("HumanoidRootPart").Transparency = 1
			clonethingy.Parent = workspace
			workspace.Camera.CameraSubject = clonethingy.Humanoid
			partthingy = Instance.new("Part",workspace)
			partthingy.Size = Vector3.new(2048,1,2048)
			partthingy.CFrame = clonethingy.HumanoidRootPart.CFrame * CFrame.new(0,-4,0)
			partthingy.Anchored = true
			partthingy.Transparency = 1
			partthingy.Name = "partthingy"


			task.spawn(function()
				repeat
					task.wait(0.1)
					if _G.fflyiing == false then break end
					lplr.character.HumanoidRootPart.Velocity = lplr.character.HumanoidRootPart.Velocity + Vector3.new(0,35,0)
				until _G.fflyiing == false
			end)

			repeat
				task.wait(0.001)
				if _G.fflyiing == false then break end
				clonethingy.HumanoidRootPart.CFrame = CFrame.new(lplr.character.HumanoidRootPart.CFrame.X,clonethingy.HumanoidRootPart.CFrame.Y,lplr.character.HumanoidRootPart.CFrame.Z)
			until testing == true
		else
			
			_G.fflyiing = false
			if workspace:FindFirstChild("clonethingy") or workspace:FindFirstChild("partthingy") then
				workspace:FindFirstChild("clonethingy"):Destroy()
				workspace:FindFirstChild("partthingy"):Destroy()
				testing = true
				workspace.Camera.CameraSubject = lplr.Character
			end
		end
	end
})

--[[
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
]]
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

--[[local oldspeed = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed
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
]]

toollabel2 = Player2:CreateLabel({
	Text = 'B-Tools'
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

toollabel21 = Player2:CreateLabel({
	Text = 'Tools'
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
			task.wait(0.5)
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

Customanim = Player3:AddDropdown({
	Name = 'Custom Animation',
	Flag = "customani2",
	List = {
		"Default",
		"toy",
		"pirate",
		"knight",
		"astronaut",
		"vampire",
		"robot",
		"levitation",
		"bubbly",
		"werewolf",
		"stylish",
		"mage",
		"cartoony",
		"zombie",
		"superhero",
		"ninja",
		"elder",
		"oldschool",
		"popstar",
		"patrol",
		"princess",
		"cowboy",
		"toilet",
		"sneaky"
	},
	Callback = function( animpack )
		if animpack == "sneaky" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1132500520"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1132506407"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
		elseif animpack == "Default" then
			Char = speaker.Character
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=387947158"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=387947464"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=387947975"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=382460631"
		elseif animpack == "toy" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=782844582"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=782845186"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
		elseif animpack == "pirate" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=750784579"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=750785176"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
		elseif animpack == "knight" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=657560551"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=657557095"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
		elseif animpack == "astronaut" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=891639666"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=891663592"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
		elseif animpack == "vampire" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083464683"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083467779"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		elseif animpack == "robot" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
		elseif animpack == "levitation" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		elseif animpack == "bubbly" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=909997997"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
		elseif animpack == "werewolf" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083222527"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083225406"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		elseif animpack == "stylish" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616143378"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616144772"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
		elseif animpack == "mage" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=707876443"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=707894699"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
		elseif animpack == "cartoony" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=742639220"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=742639812"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
		elseif animpack == "zombie" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616165109"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616166655"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		elseif animpack == "superhero" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616119360"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616120861"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
		elseif animpack == "ninja" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=656119721"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=656121397"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
		elseif animpack == "elder" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=845401742"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=845403127"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
		elseif animpack == "oldschool" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=5319816685"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=5319841935"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=5319844329"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=5319850266"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=5319852613"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=5319847204"
		elseif animpack == "confident" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1070009914"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1070012133"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
		elseif animpack == "popstar" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1212852603"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1212998578"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
		elseif animpack == "patrol" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1151204998"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1151221899"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
		elseif animpack == "princess" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=941018893"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=941025398"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
		elseif animpack == "cowboy" then
			Char = speaker.Character
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1014406523"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1014411816"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
		elseif animpack == "toilet" then
			Char = speaker.Character
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4417979645"
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

tpplayer = Player4:AddTextbox({
	Name = 'Teleport to Player',
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
vtpplayer = Player4:AddTextbox({
	Name = 'Vehical to Player',
	Flag = "tptoplayersv",
	Value = speaker.Name,
	Callback = function( plrTar )
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr2 ~= plr1 then
				local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
				local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
				
				vehicleModel:MoveTo(plr2.HumanoidRootPart.Position)
				plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame + Vector3.new(3,1,0)
			end
		end
	end
})
tpplayer = Player4:AddButton({
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
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
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


local function skipFrame() 
    return game:GetService("RunService").Heartbeat:Wait()
end

getgenv().TimerSpeed = 50
_G.Timer = false
timer = Player4:AddToggle({
	Name = 'Timer',
	Value = false,
	Flag = 'nderfgd1',
	Locked = false,
	Keybind = {
		Flag = 'nivc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.Timer = true
			oldg = Workspace.Gravity
			Workspace.Gravity = Workspace.Gravity * (getgenv().TimerSpeed / 10)
			oldws = speaker.Character.Humanoid.WalkSpeed
			speaker.Character.Humanoid.WalkSpeed = speaker.Character.Humanoid.WalkSpeed * (getgenv().TimerSpeed / 10)

			spawn(function()
				repeat skipFrame()
					local tracks = speaker.Character.Humanoid:GetPlayingAnimationTracks()
					for i,v in next, tracks do 
						v:AdjustSpeed((getgenv().TimerSpeed / 10))
					end
				until _G.Timer == false
			end)
		else
			_G.Timer = false
			Workspace.Gravity = oldg
			speaker.Character.Humanoid.WalkSpeed = oldws
		end
	end
})

timervalue = Player4:AddTextbox({
	Name = 'Timer Value',
	Flag = "pdfsadrgtrdfro_flag",
	Value = getgenv().TimerSpeed,
	Callback = function( x )
		getgenv().TimerSpeed = x
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

local invis = Player4:AddToggle({
	Name = 'Invisible',
	Value = false,
	Flag = 'Invisible3rew',
	Locked = false,
	Keybind = {
		Flag = 'niInvisiblefvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			invis1()
		else
			refresh(speaker)
		end
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

_G.KeepPos = false
local antiafk = Player4:AddToggle({
	Name = 'Keep Position',
	Value = false,
	Flag = 'keeppos21',
	Locked = false,
	Keybind = {
		Flag = 'keepsopos212',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.KeepPos = true
			oldKeep = speaker.Character.HumanoidRootPart.CFrame
			while _G.KeepPos == true do
				task.wait()
				speaker.Character.HumanoidRootPart.CFrame = oldKeep
			end
		else
			_G.KeepPos = false
		end
	end
})


function CreateFloat()
	local floaty2 = Instance.new("Part")
	floaty2.Name = "FLOAT_BICH_NIGGPORN"
	floaty2.Anchored = true
	floaty2.Size = Vector3.new(3, 0.1, 3)
	floaty2.Parent = Workspace
	fagotlmao =  game.Players.LocalPlayer.Character.HumanoidRootPart
	floaty2.CFrame = CFrame.new(fagotlmao.Position.X, fagotlmao.Position.Y - 3.8, fagotlmao.Position.Z)
	floaty2.Transparency = 1
end

function CreateFloa2()
	local floaty = Instance.new("Part")
	floaty.Name = "FLOAT_BICH_NIGGPORN2"
	floaty.Anchored = true
	floaty.Size = Vector3.new(1000, 0.1, 1000)
	floaty.Parent = Workspace
	fagotlmao =  game.Players.LocalPlayer.Character.HumanoidRootPart
	floaty.CFrame = CFrame.new(fagotlmao.Position.X, fagotlmao.Position.Y - 3.5, fagotlmao.Position.Z)
	floaty.Transparency = 1
end

function Nofloat()
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name == "FLOAT_BICH_NIGGPORN" then
			v:Destroy()
		end
	end
end

function Nofloa2()
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.Name == "FLOAT_BICH_NIGGPORN2" then
			v:Destroy()
		end
	end
end


_G.SlowFAll = false
local Float = Player4:AddToggle({
	Name = 'Slow fall',
	Value = false,
	Flag = 'nifghgd1333',
	Locked = false,
	Keybind = {
		Flag = 'fcxgtrfvddfdfc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.SlowFAll = true
			while _G.SlowFAll == true do
				wait()
				CreateFloat()
				wait()
				Nofloat()
			end
		else
			_G.SlowFAll = false

		end
	end
})

_G.PlatFormFloat = false
local Float = Player4:AddToggle({
	Name = 'Platform Float',
	Value = false,
	Flag = 'nifghgd1',
	Locked = false,
	Keybind = {
		Flag = 'fcxgtrfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.PlatFormFloat = true
			while _G.PlatFormFloat == true do
				wait()
				CreateFloa2()
				wait(5)
				Nofloa2()
			end
		else
			_G.PlatFormFloat = false
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "FLOAT_BICH_NIGGPORN2" then
					v:Destroy()
				end
			end
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
antitool = false
antitool = Player4:AddToggle({
	Name = 'Anti Tool',
	Value = false,
	Flag = 'antitools',
	Locked = false,
	Keybind = {
		Flag = 'antitoolsg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antitool = true
			speaker.Character.ChildAdded:Connect(function(rg)
				if rg:IsA("Tool") and antitool == true then
					wait()
					rg:Destroy()
				end
			end)
		else
			antitool = false
		end
	end
})
antiragdoll = false
antiragdoll = Player4:AddToggle({
	Name = 'Anti Ragdoll',
	Value = false,
	Flag = 'antirag',
	Locked = false,
	Keybind = {
		Flag = 'antiragyesyes',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antiragdoll = true
			while antiragdoll == true do
				task.wait()
				game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(8)
			end
		else
			antiragdoll = false
		end
	end
})
antinetorkclaim = Player4:AddToggle({
	Name = 'Anti Void',
	Value = false,
	Flag = 'antinetorkclaim',
	Locked = false,
	Keybind = {
		Flag = 'antinetorkclaim2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			DHSaved = workspace.FallenPartsDestroyHeight
			workspace.FallenPartsDestroyHeight = math.huge - math.huge
		else
			workspace.FallenPartsDestroyHeight = DHSaved
		end
	end
})
antifing4 = false
antifing = Player4:AddToggle({
	Name = 'Anti Fling',
	Value = false,
	Flag = 'antifing1',
	Locked = false,
	Keybind = {
		Flag = 'antifing2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antifing4 = true
			local Services = setmetatable({}, {__index = function(Self, Index)
				local NewService = game.GetService(game, Index)
				if NewService then
					Self[Index] = NewService
				end
				return NewService
			end})
			
			local LocalPlayer = Services.Players.LocalPlayer
			
			local function PlayerAdded(Player)
				local Detected = false
				local Character;
				local PrimaryPart;
			
				local function CharacterAdded(NewCharacter)
					Character = NewCharacter
					repeat
						wait()
						PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
					until PrimaryPart
					Detected = false
				end
			
				CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
				Player.CharacterAdded:Connect(CharacterAdded)
				Services.RunService.Heartbeat:Connect(function()
			
					if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
						if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
							if Detected == false and antifing4 == true then
								Library.Notify({
									Text = "Fling Exploit detected, Player: " .. tostring(Player),
									Duration = 1
								})
								Detected = true
								for i,v in ipairs(Character:GetDescendants()) do
									if v:IsA("BasePart") then
										v.CanCollide = false
										v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
										v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
										v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
									end
								end
								PrimaryPart.CanCollide = false
								PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
							end
						end
					end
				end)
			
				for i,v in ipairs(Services.Players:GetPlayers()) do
					if v ~= LocalPlayer then
						PlayerAdded(v)
					end
				end
			
				Services.Players.PlayerAdded:Connect(PlayerAdded)
			
				local LastPosition = nil
				Services.RunService.Heartbeat:Connect(function()
					pcall(function()
						local PrimaryPart = LocalPlayer.Character.PrimaryPart
						if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 and antifing4 == true then
							PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
							PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							PrimaryPart.CFrame = LastPosition
					
							Library.Notify({
								Text = "You were flung.. ",
								Duration = 1
							})
						elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
							LastPosition = PrimaryPart.CFrame
						end
					end)
				end)
			end
		else
			antifing4 = false
		end
	end
})
antirender = Player4:AddToggle({
	Name = 'Anti Render',
	Value = false,
	Flag = 'antirender',
	Locked = false,
	Keybind = {
		Flag = 'antirender2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			game.RunService:Set3dRenderingEnabled(false)
		else
			game.RunService:Set3dRenderingEnabled(true)
		end
	end
})
antirotation = Player4:AddToggle({
	Name = 'Anti Rotate',
	Value = false,
	Flag = 'antirotation',
	Locked = false,
	Keybind = {
		Flag = 'antirotation2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
		end
	end
})

--[[
do
	local arraylist = Visuals1:AddToggle({
		Name = 'Array List',
		Value = false,
		Flag = 'd8h4iARRAQY',
		Locked = false,

		Callback = function( state )
			if ( state ) then
                shared["CometConfigs"] = {
                	Enabled = true
                }
			else
				shared["CometConfigs"] = {
					Enabled = false
				}
			end
		end
	})
end
]]

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



femboymodeuwu = Visuals1:AddToggle({
	Name = 'Femboy Mode',
	Value = false,
	Flag = 'femodeuwu2',
	Locked = false,
	Keybind = {
		Flag = 'fembeuwu54',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local femsky = Instance.new("Sky")
			local femblur = Instance.new("BlurEffect")
			local femcc = Instance.new("ColorCorrectionEffect")
			
			femsky.Parent = game.Lighting
			femsky.Name = "femboymode_out"
			femsky.CelestialBodiesShown = true
			femsky.MoonAngularSize = 11
			femsky.SkyboxBk = "rbxassetid://5084575798"
			femsky.SkyboxDn = "rbxassetid://5084575916"
			femsky.SkyboxFt = "rbxassetid://5103949679"
			femsky.SkyboxLf = "rbxassetid://5103948542"
			femsky.SkyboxRt = "rbxassetid://5103948784"
			femsky.SkyboxUp = "rbxassetid://5084576400"
			femsky.StarCount = 3000
			femsky.SunAngularSize = 21

			femblur.Parent = game.Lighting
			femblur.Name = "femblur_out"
			femblur.Size = 4
			femblur.Enabled = true

			femcc.Parent = game.Lighting
			femcc.Brightness = 0
			femcc.Contrast = 0
			femcc.Name = "femccolor_out"
			femcc.Enabled = true
			femcc.Saturation = 0.1
			femcc.TintColor = Color3.fromRGB(217, 79, 255)
		else
			wait()
			for _,v in pairs(game.Lighting:GetChildren()) do
				if v.Name == "femboymode_out" and v:IsA("Sky") then
					v:Destroy()
				end
			end
			for _,v in pairs(game.Lighting:GetChildren()) do
				if v.Name == "femblur_out" and v:IsA("BlurEffect") then
					v:Destroy()
				end
			end
			for _,v in pairs(game.Lighting:GetChildren()) do
				if v.Name == "femccolor_out" and v:IsA("ColorCorrectionEffect") then
					v:Destroy()
				end
			end
		end
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

function clear_custom_skybox()
	for i,v in pairs(game.Lighting:GetChildren()) do
		if v.Name == "Night_Sky_OUT" or
		v.Name == "BIG_BLACK_DUDE_OUT" or
		v.Name == "ORANGE_SUNSET_OUT" or
		v.Name == "SNOWY_SKY_OUT" or
		v.Name == "VOIDAL_OUT" or
		v.Name == "PURPLE_SUNSET_OUT" or
		v.Name == "SPACE_SKYBOX_BACLK_OUT" or
		v.Name == "NIGULA_OUT" or
		v.Name == "NIGULA2_OUT" or
		v.Name == "STORMMY_OUT" or
		v.Name == "JEFF_THE_NIGGA_OUT" or
		v.Name == "LONG_NOSE_NIGGA" then
			v:Destroy()
		end
	end
end

local skybox = Visuals1:AddDropdown({
	Name = 'SkyBox',
	Flag = "sdsfsdfsue",
	Multi = false,
	List = {
		"No Skybox",
		"Night Sky",
		"Orange Sunset",
		"Snowy Sky",
		"Void Sky",
		"Purple Sunset",
		"Purple Nebula",
		"Green Nebula",
		"Stormy",
		":)))))))))",
		"QUANDALE DINGLE",
		"Big Black ̶n̶i̶g̶g̶a̶  dude"
	},
	Callback = function( skybox )
		if skybox == "Night Sky" then
			local nightsky_skybox = Instance.new("Sky")
			nightsky_skybox.Parent = game.Lighting
			nightsky_skybox.Name = "Night_Sky_OUT"
			nightsky_skybox.CelestialBodiesShown = false
			nightsky_skybox.MoonAngularSize = 11
			nightsky_skybox.SkyboxBk = "http://www.roblox.com/Asset/?ID=12064107"
			nightsky_skybox.SkyboxDn = "http://www.roblox.com/Asset/?ID=12064152"
			nightsky_skybox.SkyboxFt = "http://www.roblox.com/Asset/?ID=12064121"
			nightsky_skybox.SkyboxLf = "http://www.roblox.com/Asset/?ID=12063984"
			nightsky_skybox.SkyboxRt = "http://www.roblox.com/Asset/?ID=12064115"
			nightsky_skybox.SkyboxUp = "http://www.roblox.com/Asset/?ID=12064131"
			nightsky_skybox.StarCount = 0
			nightsky_skybox.SunAngularSize = 21

		elseif skybox == "Big Black ̶n̶i̶g̶g̶a̶  dude" then
			local blackdude_skybox = Instance.new("Sky")
			blackdude_skybox.Parent = game.Lighting
			blackdude_skybox.Name = "BIG_BLACK_DUDE_OUT"
			blackdude_skybox.CelestialBodiesShown = true
			blackdude_skybox.MoonAngularSize = 11
			blackdude_skybox.MoonTextureId = "rbxassetid://10017359424"
			blackdude_skybox.SunTextureId = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxBk = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxDn = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxFt = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxLf = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxRt = "rbxassetid://10017359424"
			blackdude_skybox.SkyboxUp = "rbxassetid://10017359424"
			blackdude_skybox.StarCount = 3000
			blackdude_skybox.SunAngularSize = 21

		elseif skybox == "Orange Sunset" then
			local OrangeSunset_skybox = Instance.new("Sky")
			OrangeSunset_skybox.Parent = game.Lighting
			OrangeSunset_skybox.Name = "ORANGE_SUNSET_OUT"
			OrangeSunset_skybox.CelestialBodiesShown = true
			OrangeSunset_skybox.MoonAngularSize = 11
			OrangeSunset_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			OrangeSunset_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			OrangeSunset_skybox.SkyboxBk = "rbxassetid://600830446"
			OrangeSunset_skybox.SkyboxDn = "rbxassetid://600831635"
			OrangeSunset_skybox.SkyboxFt = "rbxassetid://600832720"
			OrangeSunset_skybox.SkyboxLf = "rbxassetid://600886090"
			OrangeSunset_skybox.SkyboxRt = "rbxassetid://600833862"
			OrangeSunset_skybox.SkyboxUp = "rbxassetid://600835177"
			OrangeSunset_skybox.StarCount = 3000
			OrangeSunset_skybox.SunAngularSize = 21

		elseif skybox == "Snowy Sky" then
			local SnowySky_skybox = Instance.new("Sky")
			SnowySky_skybox.Parent = game.Lighting
			SnowySky_skybox.Name = "SNOWY_SKY_OUT"
			SnowySky_skybox.CelestialBodiesShown = false
			SnowySky_skybox.MoonAngularSize = 11
			SnowySky_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			SnowySky_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			SnowySky_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=155657655"
			SnowySky_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=155674246"
			SnowySky_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=155657609"
			SnowySky_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=155657671"
			SnowySky_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=155657619"
			SnowySky_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=155674931"
			SnowySky_skybox.StarCount = 3000
			SnowySky_skybox.SunAngularSize = 21

		elseif skybox == "Void Sky" then
			local voidal_skybox = Instance.new("Sky")
			voidal_skybox.Parent = game.Lighting
			voidal_skybox.Name = "VOIDAL_OUT"
			voidal_skybox.CelestialBodiesShown = true
			voidal_skybox.MoonAngularSize = 11
			voidal_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			voidal_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			voidal_skybox.SkyboxBk = "rbxassetid://6847661057"
			voidal_skybox.SkyboxDn = "rbxassetid://6847661380"
			voidal_skybox.SkyboxFt = "rbxassetid://6847661671"
			voidal_skybox.SkyboxLf = "rbxassetid://6847661950"
			voidal_skybox.SkyboxRt = "rbxassetid://6847665479"
			voidal_skybox.SkyboxUp = "rbxassetid://6847663751"
			voidal_skybox.StarCount = 3000
			voidal_skybox.SunAngularSize = 21

		elseif skybox == "Purple Sunset" then
			local PurpleSunset_skybox = Instance.new("Sky")
			PurpleSunset_skybox.Parent = game.Lighting
			PurpleSunset_skybox.Name = "PURPLE_SUNSET_OUT"
			PurpleSunset_skybox.CelestialBodiesShown = false
			PurpleSunset_skybox.MoonAngularSize = 11
			PurpleSunset_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			PurpleSunset_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			PurpleSunset_skybox.SkyboxBk = "rbxassetid://264908339"
			PurpleSunset_skybox.SkyboxDn = "rbxassetid://264907909"
			PurpleSunset_skybox.SkyboxFt = "rbxassetid://264909420"
			PurpleSunset_skybox.SkyboxLf = "rbxassetid://264909758"
			PurpleSunset_skybox.SkyboxRt = "rbxassetid://264908886"
			PurpleSunset_skybox.SkyboxUp = "rbxassetid://264907379"
			PurpleSunset_skybox.StarCount = 3000
			PurpleSunset_skybox.SunAngularSize = 21

		elseif skybox == "Green Nebula" then
			local Nebula2_skybox = Instance.new("Sky")
			Nebula2_skybox.Parent = game.Lighting
			Nebula2_skybox.Name = "NIGULA2_OUT"
			Nebula2_skybox.CelestialBodiesShown = false
			Nebula2_skybox.MoonAngularSize = 11
			Nebula2_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Nebula2_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Nebula2_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159248188"
			Nebula2_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159248183"
			Nebula2_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159248187"
			Nebula2_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159248173"
			Nebula2_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159248192"
			Nebula2_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159248176"
			Nebula2_skybox.StarCount = 0
			Nebula2_skybox.SunAngularSize = 21

		elseif skybox == "Purple Nebula" then
			local Nebula_skybox = Instance.new("Sky")
			Nebula_skybox.Parent = game.Lighting
			Nebula_skybox.Name = "NIGULA_OUT"
			Nebula_skybox.CelestialBodiesShown = false
			Nebula_skybox.MoonAngularSize = 11
			Nebula_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Nebula_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Nebula_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159454299"
			Nebula_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159454296"
			Nebula_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159454293"
			Nebula_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159454286"
			Nebula_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159454300"
			Nebula_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
			Nebula_skybox.StarCount = 0
			Nebula_skybox.SunAngularSize = 21

		elseif skybox == "Stormy" then
			local Stormy_skybox = Instance.new("Sky")
			Stormy_skybox.Parent = game.Lighting
			Stormy_skybox.Name = "STORMMY_OUT"
			Stormy_skybox.CelestialBodiesShown = false
			Stormy_skybox.MoonAngularSize = 11
			Stormy_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Stormy_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Stormy_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=48015734"
			Stormy_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=48015300"
			Stormy_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=48015344"
			Stormy_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=48015327"
			Stormy_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=48015359"
			Stormy_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=48015387"
			Stormy_skybox.StarCount = 3000
			Stormy_skybox.SunAngularSize = 21

		elseif skybox == ":)))))))))" then
			local scarry_skybox = Instance.new("Sky")
			scarry_skybox.Parent = game.Lighting
			scarry_skybox.Name = "JEFF_THE_NIGGA_OUT"
			scarry_skybox.CelestialBodiesShown = false
			scarry_skybox.MoonAngularSize = 11
			scarry_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			scarry_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			scarry_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=103560945"
			scarry_skybox.StarCount = 3000
			scarry_skybox.SunAngularSize = 21

		elseif skybox == "QUANDALE DINGLE" then
			local QUANDALE_skybox = Instance.new("Sky")
			QUANDALE_skybox.Parent = game.Lighting
			QUANDALE_skybox.Name = "LONG_NOSE_NIGGA"
			QUANDALE_skybox.CelestialBodiesShown = true
			QUANDALE_skybox.MoonAngularSize = 11
			QUANDALE_skybox.MoonTextureId = "rbxassetid://9065554720"
			QUANDALE_skybox.SunTextureId = "rbxassetid://6196665106"
			QUANDALE_skybox.SkyboxBk = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxDn = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxFt = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxLf = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxRt = "rbxassetid://9065554720"
			QUANDALE_skybox.SkyboxUp = "rbxassetid://9065554720"
			QUANDALE_skybox.StarCount = 3000
			QUANDALE_skybox.SunAngularSize = 11
			
		elseif skybox == "No Skybox" then
			clear_custom_skybox()
		end
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

local cvhamslable = Visuals3:CreateLabel({
	Text = 'Chams'
})


getgenv().FillColor = Color3.new(1, 0.666667, 0)
getgenv().FillTransparency = 0
getgenv().OutlineColor = Color3.new(1, 0.333333, 1)
getgenv().OutlineTransparency = 0

cgamesopCHAMS = Visuals3:AddToggle({
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
			 	esp.OutlineColor = getgenv().OutlineColor
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
CockerChalorPimdfu = Visuals3:AddColorPicker({
	Name = "Fill Color",
	Value = getgenv().FillColor,
	Callback = function( color )
		getgenv().FillColor = color
	end
})
CeroChamdfkloru = Visuals3:AddColorPicker({
	Name = "Outline Color",
	Value = getgenv().OutlineColor,
	Callback = function( color )
		getgenv().OutlineColor = color
	end
})
chamtransda1 = Visuals3:AddSlider({
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
chamtransda2 = Visuals3:AddSlider({
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

i4rdgdhgdfgh = Visuals3:CreateLabel({
	Text = 'Esp'
})

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/EspLibrary.lua"))()
ESPboxToggle4 = Visuals3:AddToggle({
	Name = 'Boxes',
	Value = false,
	Flag = '54r',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Boxes = true
		else
			ESP.Boxes = false
		end
	end
})

ESPboxToggle3 = Visuals3:AddToggle({
	Name = 'Tracers',
	Value = false,
	Flag = 'rdvf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Tracers = true
		else
			ESP.Tracers = false
		end
	end
})

ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'Names',
	Value = false,
	Flag = 'h6rhfgch1',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Names = true
		else
			ESP.Names = false
		end
	end
})

boxespfromyes = Visuals3:CreateLabel({
	Text = 'settings'
})

ColorPicker = Visuals3:AddColorPicker({
	Name = "Esp color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		ESP.Color = x
	end
})

ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'FaceCamera',
	Value = false,
	Flag = 'h6rhfgch',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.FaceCamera = true
		else
			ESP.FaceCamera = false
		end
	end
})



local ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'Use Team Color',
	Value = false,
	Flag = 'h6rhfgch2',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.TeamColor = true
		else
			ESP.TeamColor = false
		end
	end
})

local ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'TeamMates',
	Value = false,
	Flag = 'h6rhfgch3',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.TeamMates = true
		else
			ESP.TeamMates = false
		end
	end
})


viewclip = Visuals4:AddToggle({
	Name = 'View Clip',
	Value = false,
	Flag = 'rdfgsgdygdf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			speaker.DevCameraOcclusionMode = "Invisicam"
		else
			speaker.DevCameraOcclusionMode = "Zoom"
		end
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
		game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
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

local cumball = Funny3:AddButton({
	Name = "Become Ball",	
	Callback = function()
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
		local Camera = workspace.CurrentCamera

		local SPEED_MULTIPLIER = 30
		local JUMP_POWER = 60
		local JUMP_GAP = 0.3

		local character = game.Players.LocalPlayer.Character

		for i,v in ipairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end

		local ball = character.HumanoidRootPart
		ball.Shape = Enum.PartType.Ball
		ball.Size = Vector3.new(5,5,5)
		local humanoid = character:WaitForChild("Humanoid")
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Blacklist
		params.FilterDescendantsInstances = {character}

		local tc = RunService.RenderStepped:Connect(function(delta)
			ball.CanCollide = true
			humanoid.PlatformStand = true
			if UserInputService:GetFocusedTextBox() then
				return 
			end
			if UserInputService:IsKeyDown("W") then
				ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UserInputService:IsKeyDown("A") then
				ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
			if UserInputService:IsKeyDown("S") then
				ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UserInputService:IsKeyDown("D") then
				ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
		end)

		UserInputService.JumpRequest:Connect(function()
			local result = workspace:Raycast(
			ball.Position,
			Vector3.new(
				0,
				-((ball.Size.Y/2)+JUMP_GAP),
				0
			),
			params
			)
			if result then
				ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
			end
		end)

		Camera.CameraSubject = ball
		humanoid.Died:Connect(function() tc:Disconnect() end)	
	end
})
hathub = Funny3:AddButton({
	Name = "Hat hub",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/fe%20extentions/hat%20hub%20v2.lua'))()
		end
	end
})

hathub1 = Funny3:CreateLabel({
	Text = '.orbit (plr)'
})
hathub2 = Funny3:CreateLabel({
	Text = '.speed (number)'
})
hathub3 = Funny3:CreateLabel({
	Text = '.offest (number)'
})
hathub4 = Funny3:CreateLabel({
	Text = '.mode (number)'
})
hathub5 = Funny3:CreateLabel({
	Text = '.angular (number)'
})

dafeet = Funny3:AddButton({
	Name = "Da Feet",
	Callback = function()
		if r15(speaker) then
			Library.Notify({
				Text = "You Need to be In R6",
				Duration = 6
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/fe%20extentions/da%20feet.lua'))()
		end
	end
})

local invisfling = Funny4:AddButton({
	Name = "Invis Fling",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/invisfling.lua'))()
		wait(3)
		Library.Notify({
			Text = "Click Z and wait 10 seconds ",
			Duration = 6
		})
	end
})

orbitaplayer = Funny5:AddTextbox({
	Name = 'Orbit a Player',
	Flag = "orbitaplayer",
	Value = speaker.Name,
	Callback = function( plrTar )
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr2 ~= plr1 then
				oldcfORBIT = speaker.Character.HumanoidRootPart.CFrame
				_G.OrbitTp = true
				local P = Instance.new("Part",plr2)
				P.Transparency = 1
				P.Name = "ThePart"
				P.Size = Vector3.new(1.7,1.7,1.7)
				P.Massless = true
				P.CanCollide = false
				local W = Instance.new("Weld", P)
				W.Part1 = plr2.HumanoidRootPart
				W.Part0 = P
				local sine = 0
				local change = 1
				local spin = 0
				local spin2 = 0
				local rp = Instance.new("RocketPropulsion")
				rp.Parent = speaker.Character.HumanoidRootPart
				rp.CartoonFactor = 1
				rp.MaxThrust = 5000
				rp.MaxSpeed = 100
				rp.ThrustP = 5000
				rp.Name = "OrbitalDestructionPart"
				rp.Target = plr2.ThePart
				rp:Fire()
				speaker.Character.Humanoid.PlatformStand = true

				while true do
					game:GetService("RunService").RenderStepped:wait()
					sine = sine + change
					spin2 = spin2 + 0.6
					spin = spin + 1
					W.C0 = CFrame.new(7 * math.cos(20),-2 - 2 * math.sin(sine/10),7 * math.sin(20))*CFrame.Angles(math.rad(0),math.rad(spin),math.rad(0))
				end
			end
		end
	end
})
noorbit = Funny5:AddButton({
	Name = "Stop Orbiting",
	Callback = function()
		if _G.OrbitTp == true then
			speaker.Character.HumanoidRootPart.CFrame = oldcfORBIT
		end
		_G.OrbitTp = false
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v.Name == "OrbitalDestructionPart" or v.Name == "OrbitalDestruction" then
				v:Destroy()
			end
		end
		speaker.Character.Humanoid.PlatformStand = false
		speaker.Character.Humanoid.Sit = false
	end
})
local ff = false
fuckaplayerface = Funny5:AddTextbox({
	Name = 'Face fuck a Player',
	Flag = "orbitaplay1er",
	Value = "let them eat you out :3",
	Callback = function( plrTar )
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr2 ~= plr1 then
				if ff == true then
					ff = false
					speaker.Character.Humanoid.Sit = false			
				return

				else ff = true
					while ff do
						speaker.Character.Humanoid.Sit = true
						speaker.Character.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)* CFrame.new(0,1.7,0.4)
						speaker.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new()
						wait()
					end
				end
			end
		end
	end
})
fuckaplayerfaceNAH = Funny5:AddButton({
	Name = "Stop face fucking",
	Callback = function()
		speaker.Character.Humanoid.Sit = false
		ff = false
	end
})

fucktardSettings = {
	Color = Color3.new(233, 152, 3);
	Heat = 9;
	SecondaryColor = Color3.new(139, 80, 55);
	Size = 5;
}

headfire = Funny6:AddToggle({
	Name = 'Head Fire',
	Value = false,
	Flag = 'headfire1',
	Locked = false,
	Keybind = {
		Flag = 'headfire2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local fucktard = Instance.new("Fire")
			fucktard.Parent = speaker.Character.Head
			fucktard.Name = "fucktard"
			fucktard.SecondaryColor = fucktardSettings.SecondaryColor
			fucktard.Size = fucktardSettings.Size
			fucktard.Heat = fucktardSettings.Heat
			while state == true do
				task.wait()
				fucktard.Color = fucktardSettings.Color
			end
		else
			for _,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
				if v.Name == "fucktard" then
					v:Destroy()
				end
			end
		end
	end
})

fucktardset1 = Funny6:AddColorPicker({
	Name = "Primary Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		fucktardSettings.Color = x
	end
})
fucktardset2 = Funny6:AddColorPicker({
	Name = "Secondary Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		fucktardSettings.SecondaryColor = x
	end
})
heatsajhafs = Funny6:AddSlider({
	Name = 'Fire Heat',
	Flag = "slidds",
	Value = 13,
	Min = 0,
	Max = 1000,
	Decimals = 2,
	llegalInput = false,
	Callback = function(x)
		fucktardSettings.Heat = x
	end
})
sizeugsdfsdfs = Funny6:AddSlider({
	Name = 'Fire Size',
	Flag = "s82",
	Value = 5,
	Min = 1,
	Max = 30,
	Decimals = 2,
	llegalInput = false,
	Callback = function( x )
		fucktardSettings.Size = x
	end
})


getgenv().WayPointTransparency = 1
getgenv().WayPointCanCollide = false
getgenv().WayPointAnchored = true

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
				task.wait(getgenv().BallDelay)
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
breadtrail4 = Misc3:AddSlider({
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


enlerespawn = Misc4:AddToggle({
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
enablechat = Misc4:AddToggle({
	Name = 'Show Chat',
	Value = true,
	Flag = 'nilfrgr12',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			local Players = game:GetService("Players")
			local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer

			local chatFrame = player.PlayerGui.Chat.Frame
			chatFrame.ChatChannelParentFrame.Visible = true
			chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
		else
			local Players = game:GetService("Players")
			local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer

			local chatFrame = player.PlayerGui.Chat.Frame
			chatFrame.ChatChannelParentFrame.Visible = false
			chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
		end
	end
})
words = {
    ['gay'] = 'Bullying',
    ['lesbian'] = 'Bullying',
    ['retard'] = 'Bullying',
    ['noob'] = 'Bullying',
    ['clown'] = 'Bullying',
    ['get a life'] = 'Bullying',
    ['getalife'] = 'Bullying',
    ['no life'] = 'Bullying',
    ['nolife'] = 'Bullying',
    ['wizard'] = 'Bullying',
    ['reports'] = 'Bullying',
    ['father'] = 'Bullying',
    ['mother'] = 'Bullying',
    ['dumb'] = 'Bullying',
    ['stupid'] = 'Bullying',
    ['cringe'] = 'Bullying',
    ['skill issue'] = 'Bullying',
    ['parent'] = 'Bullying',
    ['kid'] = 'Bullying',
    ['ugly'] = 'Bullying',
    ['child'] = 'Bullying',
    ['trash'] = 'Bullying',
    ['bozo'] = 'Bullying',
    ['kys'] = 'Bullying',
    ['die'] = 'Bullying',
    ['killyou'] = 'Bullying',
    ['loser'] = 'Bullying',
    ['black'] = 'Bullying',
    ['white'] = 'Bullying',
    ['ez l'] = 'Bullying',
    ['l ez'] = 'Bullying',
    ['negro'] = 'Bullying',
    ['nivver'] = 'Bullying',
    ['negar'] = 'Bullying',
    ['bad'] = 'Bullying',
    ['worst'] = 'Bullying',
    ['fat'] = 'Bullying',
    ['hack'] = 'Scamming',
    ['exploit'] = 'Scamming',
    ['cheat'] = 'Scamming',
    ['download'] = 'Offsite Links',
    ['youtube'] = 'Offsite Links',
    ['dizzy'] = 'Offsite Links',
}


_G.AutoReport = false
autoreportvape = Misc4:AddToggle({
	Name = 'Auto report',
	Value = false,
	Flag = 'autoreportNOTSKIDDEDFROMVAPE',
	Keybind = {
		Flag = 'nilbr2eadcrumsbsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if syn then
				autoreportvape:Set(false)
				Library.Notify({
					Text = "Auto Report Does not work on synapse. sry   ",
					Duration = 6
				})
			else
				_G.AutoReport = true
				if not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents') or not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('OnMessageDoneFiltering') then return end
				DCSCE = game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents')
				local players = game:GetService("Players")

				function handler(msg,speaker)
					for i,v in next, words do
						if string.match(string.lower(msg),i) then
							if _G.AutoReport == true then
								players:ReportAbuse(players[speaker],v,'He is breaking roblox TOS')
								task.wait(1.5)
								players:ReportAbuse(players[speaker],v,'He is breaking roblox TOS')
								Library.Notify({
									Text = "Auto Report Reported a player ",
									Duration = 3
								})
							end
						end
					end
				end

				msg = DCSCE:FindFirstChild('OnMessageDoneFiltering')
				msg.OnClientEvent:Connect(function(msgdata)
					if tostring(msgdata.FromSpeaker) ~= players.LocalPlayer.Name then
						handler(tostring(msgdata.Message),tostring(msgdata.FromSpeaker))
					end
				end)
			end
		else
			_G.AutoReport = false
		end
	end
})
fakelag = Misc4:AddToggle({
	Name = 'Back Track',
	Value = false,
	Flag = 'fakelaggg',
	Keybind = {
		Flag = 'laggfeuash',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			settings():GetService("NetworkSettings").IncomingReplicationLag = 100
		else
			settings():GetService("NetworkSettings").IncomingReplicationLag = 0
		end
	end
})

chatcrsaher1 = flase
chatcrasher = Misc4:AddToggle({
	Name = 'Chat Crasher',
	Value = false,
	Flag = 'chatcrasher',
	Keybind = {
		Flag = 'crashololol',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			chatcrsaher1 = true
			while chatcrsaher1 == true do
				task.wait()
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼᲼", "All")
			end
		else
			chatcrsaher1 = flase
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
local ancdiabled = Misc4:AddButton({
	Name = "Godmode Anti Cheat Disabler",
	Callback = function()
		local plr = game:GetService("Players").LocalPlayer
		local cha = plr.Character
		cha.Parent = nil
		cha.HumanoidRootPart:Destroy()
		cha.Parent = workspace
	end
})

getgenv().Message = "string"
getgenv().Delay = 0.001

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
				task.wait()
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
	Value = 0.1,
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

local keepui = Misc7:AddToggle({
	Name = 'Keep Ui',
	Value = false,
	Flag = 'keepunbiunded',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			if syn.queue_on_teleport then
				if state == true then
					syn.queue_on_teleport([[
						game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
						repeat wait(.1) until game:GetService('Players').LocalPlayer
						loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/main/NewMain.lua"))()
					]])
				end
			else
				keepui:Set(false)
				Library.Notify({
					Text = "Missing syn.queue_on_teleport",
					Duration = 6
				})
			end
		else
			return
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
			faggot.CFrame = CFrame.new(0, -50, 0)
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


getgenv().HitBoxSizeExpand = 10
_G.ExpandHitbox = false
expandhitbox = Misc9:AddToggle({
	Name = 'Expand HitBoxes',
	Value = false,
	Flag = 'hitbox_big',
	Locked = false,
	Keybind = {
		Flag = '54asddsf_bigvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.ExpandHitbox = true
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Head" and v:IsA("MeshPart") then
					if v ~= speaker.Character.Head then
						v.Size = Vector3.new((getgenv().HitBoxSizeExpand / 10), (getgenv().HitBoxSizeExpand / 10), (getgenv().HitBoxSizeExpand / 10))
					end
				end
			end
		else
			_G.ExpandHitbox = false
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if v.Name == "Head" and v:IsA("MeshPart") then
					v.Size = Vector3.new(1, 1, 1)
				end
			end
		end
	end
})


expandhitboxsizr = Misc9:AddTextbox({
	Name = 'Expand amount',
	Flag = "ecnpandsizxe",
	Value = 10,
	Callback = function( x )
		getgenv().HitBoxSizeExpand = x
	end
})

dev1 = Credits1:CreateLabel({
	Text = 'Vo | Main Dev'
})


--Scripter1 = Credits2:CreateLabel({
--	Text = 'sx65 | Fly'
--})
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
	Duration = 1
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/others/extras.lua"))()