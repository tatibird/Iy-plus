local repo = 'https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/repo/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Iratethisname10/whitelists/main/tags/tagloader.lua"))()

local Window = Library:CreateWindow({
    Title = "Vo's Infinte Yeild v0.0.3 | "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    player = Window:AddTab('Plr'),
    Visuals = Window:AddTab('Visual'),
    i2 = Window:AddTab(''),
    i3 = Window:AddTab(''),
    ['UI Settings'] = Window:AddTab('UI'),
}

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

local Player = Tabs.player:AddLeftGroupbox('Player')
local Player2 = Tabs.player:AddRightGroupbox('Others')
local Player3 = Tabs.player:AddLeftGroupbox('Sex')
local stuff = Tabs.Visuals:AddLeftGroupbox('stuff')

Player:AddInput('walkspeed', {
    Default = '16',
    Numeric = true,
    Finished = true,
    Text = 'Speed Value',
    Tooltip = 'Speed Value',
    Placeholder = 'Value', 
})
Options.walkspeed:OnChanged(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = Options.walkspeed.Value
end)
Player:AddInput('jumppower', {
    Default = '50',
    Numeric = true,
    Finished = true,
    Text = 'Jump Power Value',
    Tooltip = 'Jump Power Value',
    Placeholder = 'Value', 
})
Options.jumppower:OnChanged(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = Options.jumppower.Value
end)
Player:AddInput('gravity', {
    Default = '196.2',
    Numeric = true,
    Finished = true,
    Text = 'Gravity',
    Tooltip = 'Set Workspace Gravity',
    Placeholder = 'Value', 
})
Options.gravity:OnChanged(function()
    game.Workspace.Gravity = Options.gravity.Value
end)

function gmode()
    game.Players.LocalPlayer.Character.Humanoid:Remove()
    Instance.new('Humanoid', game.Players.LocalPlayer.Character)
    game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass('Humanoid').HipHeight = 2
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
	Library:Notify("You are now invisible to other players")
end

Player:AddButton('GodMode', function() gmode() end)
Player:AddButton('Invisible', function() invis1() end)

local speaker = game.Players.LocalPlayer

local NoClip = Player:AddButton('No Clip', function()
    nclip = true
end)


local Clip = NoClip:AddButton('Clip', function()
    nclip = false
end)

local btools = Player2:AddButton('Spawn BTools', function()
    loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

local Nobtools = btools:AddButton('Destroy BTools', function()
    for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if e:IsA("Tool") and e.Name == "F3X" then
            e:Destroy()
        end
    end
end)

local destroytools = Player2:AddButton('Destroy All Tools', function()
    for _,e in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
        if e:IsA("Tool") then
            e:Destroy()
        end
    end
end)

local noanims = Player2:AddButton('Disable Anims', function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
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
	wait()
	CAS:UnbindAction(FA)
	wait()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	game.Players.LocalPlayer.Character.Animate.Disabled = true
end)
local yesanims = noanims:AddButton('Enable Anims', function()
	game.Players.LocalPlayer.Character.Animate.Disabled = false
end)
local disableanims = Player2:AddButton('Freeze Anims', function()
    game.Players.LocalPlayer.Character.Animate.Disabled = true
end)
local enableanims = disableanims:AddButton('UnFreeze Anims', function()
    game.Players.LocalPlayer.Character.Animate.Disabled = false
end)

local lp = game.Players.LocalPlayer

game:GetService("RunService").Stepped:Connect(function()
    if nclip == true then
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "Torso" or v.Name == "Head" or v.Name == "UpperTorso" or v.Name == "LowerTorso" or v.Name == "HumanoidRootPart" then
				v.CanCollide = false
			end
		end
    end
end)

Player:AddToggle('flyjump', {
    Text = 'Fly jump',
    Default = false,
    Tooltip = 'inf jumps but for lazy people :)',
})
Toggles.flyjump:OnChanged(function()
    game:GetService("UserInputService").JumpRequest:connect(function()
        if true and Toggles.flyjump.Value == true then
            wait()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end)
Player:AddToggle('infjump', {
    Text = 'Inf jump',
    Default = false,
    Tooltip = 'no Jump limit',
})
Toggles.flyjump:OnChanged(function()
	function Action(Object, Function) if Object ~= nil then Function(Object); end end
	local Player = game:GetService'Players'.LocalPlayer;
	local UIS = game:GetService'UserInputService';
 
	UIS.InputBegan:connect(function(UserInput)
    	if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space and Toggles.infjump.Value == true then
        	Action(Player.Character.Humanoid, function(self)
            	if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                	Action(self.Parent.HumanoidRootPart, function(self)
                    	self.Velocity = Vector3.new(0, 50, 0);
                	end)
            	end
        	end)
    	end
	end)
end)
Player:AddToggle('clicktp', {
    Text = 'CTRL + Click Tp',
    Default = false,
    Tooltip = 'click click :3',
})
Toggles.clicktp:OnChanged(function()
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
        if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and Toggles.clicktp.Value == true then
            Teleport(Mouse.Hit.p)
        end
    end)
end)

Player:AddInput('flyspeed', {
    Default = '150',
    Numeric = true,
    Finished = true,
    Text = 'Fly Speed',
    Tooltip = 'Set fly speed',
    Placeholder = 'Value', 
})

Player:AddToggle('fly', {
    Text = 'Fly | X to fly',
    Default = false,
    Tooltip = 'Un-toggling fly when toggle value\nis true can cause script to break',
})
Toggles.fly:OnChanged(function()
    _G.Speed = Options.flyspeed.Value
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
        	if Input.KeyCode == _G.Key and Toggles.fly.Value == true then
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

	while Toggles.fly.Value == true do 
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
end)



local Global = getgenv and getgenv() or _G
Player3:AddButton('Basic Bang', function() 
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
end)
Player3:AddButton('"Pushups"', function() 
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
end)
Player3:AddButton('Bend Over', function() 
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
end)
Player3:AddButton('Lying down', function() 
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
end)
Player3:AddButton('Blowjob', function() 
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
end)

Player2:AddButton('Enable SL', function()
	game.Players.LocalPlayer.DevEnableMouseLock = true
end)

local sittt = Player2:AddButton('Sit', function()
    speaker.Character:FindFirstChildOfClass("Humanoid").Sit = true
end)
local layyy = sittt:AddButton('lay', function()
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
end)

local nolimbs = Player2:AddButton('No Limbs', function()
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

end)
local nohead = nolimbs:AddButton('No Head', function()
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
end)
local noarms = Player2:AddButton('No Arms', function()
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
end)
local nolegs = noarms:AddButton('No Legs', function()
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
end)



stuff:AddInput('MaxZoomDistance', {
    Default = game.Players.LocalPlayer.CameraMaxZoomDistance,
    Numeric = true,
    Finished = true,
    Text = 'Max Zoom Distance',
    Tooltip = 'Set Max Zoom Distance',
    Placeholder = 'Value', 
})
Options.MaxZoomDistance:OnChanged(function()
    speaker.CameraMaxZoomDistance = Options.MaxZoomDistance.Value
end)

stuff:AddInput('MinZoomDistance', {
    Default = game.Players.LocalPlayer.CameraMinZoomDistance,
    Numeric = true,
    Finished = true,
    Text = 'Min Zoom Distance',
    Tooltip = 'Set Min Zoom Distance',
    Placeholder = 'Value', 
})
Options.MinZoomDistance:OnChanged(function()
    speaker.CameraMinZoomDistance = Options.MinZoomDistance.Value
end)



Library:SetWatermarkVisibility(false)
Library:SetWatermark('Infinte Yeild ++ | Made By Vo#1092')


Library.KeybindFrame.Visible = true;

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)


local MenuGroup = Tabs['UI Settings']:AddRightGroupbox('Menu')
local Credits = Tabs['UI Settings']:AddLeftGroupbox('Credits')

MenuGroup:AddToggle("Keybinds", { Text = "Show Keybinds Menu", Default = false }):OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.Keybinds.Value
end)
MenuGroup:AddToggle("Watermark", { Text = "Show Watermark", Default = false }):OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
_G.invite29493754 = false
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddButton('Copy Discord Invite', function() 
	setclipboard("https://discord.gg/NbUUucBXhq")
	Library:Notify("Invite Copied to clipboard")
end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightControl', NoUI = true, Text = 'Menu keybind' }) 

Credits:AddLabel('Vo  |  Lead Developer/Owner')
Credits:AddLabel('AmokahFox  |  Made Invis Module')
Credits:AddLabel('Pendulum Hub  |  Made Sex Module')
Credits:AddLabel('E009  |  Very Cool Guy')

Credits:AddLabel('Noro  |  Very "Rich" Person')

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])