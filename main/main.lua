local repo = 'https://raw.githubusercontent.com/Iratethisname10/Iy-plus/main/repo/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Blackout Privet | Infinte Yeild ++ | '..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    player = Window:AddTab('Local PLayer'),
    Visuals = Window:AddTab('Visuals'),
    i2 = Window:AddTab(''),
    i3 = Window:AddTab(''),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}


local Player = Tabs.player:AddLeftGroupbox('Player')
local Player2 = Tabs.player:AddRightGroupbox('Others')
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


local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddToggle("Keybinds", { Text = "Show Keybinds Menu", Default = false }):OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.Keybinds.Value
end)
MenuGroup:AddToggle("Watermark", { Text = "Show Watermark", Default = false }):OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RShift', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])