local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
print("Library Loaded")

local Window = Library.CreateLib("FluxWare Beta V1.1", "Synapse")

local Tab = Window:NewTab("Gun")

local Section = Tab:NewSection("Gun Mods")

Section:NewButton("Infinite Ammo", "Gives You Infinite Ammo", function()
    local m = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
    m.MaxAmmo = math.huge
    m.CurrentAmmo = math.huge
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Modded Gun (Need to Hold it Out)"; -- the title 
Text = "Succesfully Modded Your gun (if it was out)"; -- what the text says 
Duration = 5; -- how long the notification should in secounds
})
end)

Section:NewButton("Autofire", "Mods Your Gun To Autofire", function()
    local m = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
    m.AutoFire = true
    m.FireRate = 0  
    game.StarterGui:SetCore("SendNotification", {
Title = "Mod Gun"; -- the title 
Text = "Succesfully Modded Your gun (if it was out)"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("All Mods", "Mods Your Gun To Both Inf Ammo And Fire Rate", function()
    local m = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
    m.MaxAmmo = math.huge
    m.CurrentAmmo = math.huge
    m.AutoFire = true
    m.FireRate = 0  
    m.Damage = 100
    game.StarterGui:SetCore("SendNotification", {
Title = "Mod Gun"; -- the title 
Text = "Succesfully Modded Your gun (if it was out)"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Tab = Window:NewTab("Teleports")

local Section = Tab:NewSection("Teleports")

Section:NewButton("Armory", "Teleports you to the Armory", function()
    print("Successfully Teleported To The Armory")
    
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = Vector3.new(836, 100, 2269)

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Teleport"; -- the title 
Text = "Teleported To Armory"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Nex", "Teleports you to the Center Of The Prison", function()
    print("Successfully Teleported To The Armory")
    
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = Vector3.new(906, 100, 2381)

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Teleport"; -- the title 
Text = "Teleported You To Nex"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Tower", "Teleports you to the Tower of the Prison", function()
    print("Successfully Teleported To The Armory")
    
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = Vector3.new(763, 125, 2583)

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Teleport"; -- the title 
Text = "Teleported You To Tower"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Criminal Base", "Teleports you to the Criminal Base", function()
    print("Successfully Teleported To The Criminal Base")
    
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = Vector3.new(-859, 94, 2060)

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Teleport"; -- the title 
Text = "Teleported To Criminal Base"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Gas Station", "Teleports you to the Gas Station", function()
    print("Successfully Teleported To The Gas Station")
        
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local targetPosition = Vector3.new(-527, 54, 1656)

    humanoidRootPart.CFrame = CFrame.new(targetPosition)
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Teleport"; -- the title 
Text = "Teleported To Gas Station"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Section = Tab:NewSection("TP User")

local Players = game:GetService("Players")

-- Function to teleport the local player to the target player's position
local function teleportToPlayer(username)
    local localPlayer = Players.LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Find the target player by username
    local targetPlayer = Players:FindFirstChild(username)
    if targetPlayer and targetPlayer.Character then
        local targetCharacter = targetPlayer.Character
        local targetHumanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
        if targetHumanoidRootPart then
            local targetPosition = targetHumanoidRootPart.Position
            humanoidRootPart.CFrame = CFrame.new(targetPosition)
            print("Teleported to", username)
        else
            print("Target player does not have a HumanoidRootPart.")
        end
    else
        print("Player not found or does not have a valid character.")
    end
end

-- Example GUI TextBox for entering the username
Section:NewTextBox("Enter Username", "Teleport to this player", function(txt)
    teleportToPlayer(txt)
end)

local Players = game:GetService("Players")

-- Function to teleport the local player to the selected player's position
local function teleportToPlayer(username)
    local localPlayer = Players.LocalPlayer
    local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Find the target player by username
    local targetPlayer = Players:FindFirstChild(username)
    if targetPlayer and targetPlayer.Character then
        local targetCharacter = targetPlayer.Character
        local targetHumanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
        if targetHumanoidRootPart then
            local targetPosition = targetHumanoidRootPart.Position
            humanoidRootPart.CFrame = CFrame.new(targetPosition)
            print("Teleported to", username)
        else
            print("Target player does not have a HumanoidRootPart.")
        end
    else
        print("Player not found or does not have a valid character.")
    end
end

-- Function to get all player usernames
local function getAllPlayerUsernames()
    local usernames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(usernames, player.Name)
    end
    return usernames
end

-- Initial list of players for the dropdown
local initialList = getAllPlayerUsernames()

-- Create the dropdown
local dropdown = Section:NewDropdown("Select Player", "Teleport to this player", initialList, function(currentOption)
    teleportToPlayer(currentOption)
end)

-- Function to refresh the dropdown
local function refreshDropdown()
    local newList = getAllPlayerUsernames()
    dropdown:Refresh(newList)
end

-- Update the dropdown when a player joins or leaves
Players.PlayerAdded:Connect(refreshDropdown)
Players.PlayerRemoving:Connect(refreshDropdown)

local Tab = Window:NewTab("Local Player")

local Section = Tab:NewSection("Speed/Jumppower (Sliders)")

Section:NewSlider("Speed", "Slider For Speed", 200, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jumppower", "Slider for Jumpower", 500, 0, function(j) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

local Section = Tab:NewSection("Speed/Jumppower (Input Great For Mobile)")

Section:NewTextBox("WalkSpeed (Input)", "Input The Walkspeed Amount And it will Set your Walkspeed", function(s2)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s2
	wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Speed"; -- the title 
Text = "Succesfully Set Your Speed"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewTextBox("JumpPower (Input)", "Input The JumpPower Amount And it will Set your JumpPower", function(j2)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = j2
	wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "JumpPower"; -- the title 
Text = "Succesfully Set Your JumpPower"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Section = Tab:NewSection("Noclip")

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local RunService = game:GetService("RunService")

local Clipon = false
local SteppedConnection

-- Function to enable noclip
local function enableNoclip()
    SteppedConnection = RunService.Stepped:Connect(function()
        if Clipon then
            for _, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                    for _, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end
        end
    end)
end

-- Function to disable noclip
local function disableNoclip()
    if SteppedConnection then
        SteppedConnection:Disconnect()
    end
    for _, b in pairs(Workspace:GetChildren()) do
        if b.Name == Plr.Name then
            for _, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
    end
end

-- Toggle function
Section:NewToggle("Noclip Toggle", "Enable or disable noclip", function(state)
    Clipon = state
    if state then
        print("Noclip On")
        enableNoclip()
        game.StarterGui:SetCore("SendNotification", {
Title = "Noclip"; -- the title 
Text = "Noclip On"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
    else
        print("Noclip Off")
        disableNoclip()
        game.StarterGui:SetCore("SendNotification", {
Title = "Noclip"; -- the title 
Text = "Noclip Off"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
    end
end)

local Section = Tab:NewSection("Tase Bypass")

Section:NewButton("Tase Bypass", "Bypass Tase", function()
    print("Tase Bypass")
    game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
	wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Tase Bypass"; -- the title 
Text = "Done the Tase Bypass"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Section = Tab:NewSection("Chams/Hitbox")

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local chamsEnabled = false  -- Variable to keep track of the toggle state

-- Function to create or remove highlights based on the toggle state
local function toggleChams(state)
    chamsEnabled = state

    if chamsEnabled then
        print("Chams Enabled")
        -- Apply chams to all players
        for _, player in pairs(Players:GetPlayers()) do
            createHighlight(player)
        end
    else
        print("Chams Disabled")
        -- Remove chams from all players
        for _, player in pairs(Players:GetPlayers()) do
            removeHighlight(player)
        end
    end
end

-- Function to create a highlight for a player's character
function createHighlight(player)
    if player == Players.LocalPlayer then return end

    local character = player.Character
    if character and not character:FindFirstChildOfClass("Highlight") then
        local highlight = Instance.new("Highlight")
        highlight.Parent = character
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Adornee = character
        highlight.FillColor = player.TeamColor.Color
        highlight.OutlineColor = Color3.new(1, 1, 1)
    end
end

-- Function to remove a highlight from a player's character
function removeHighlight(player)
    local character = player.Character
    if character then
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight:Destroy()
        end
    end
end

-- Apply or remove highlight when a player's character is added, based on the chams state
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if chamsEnabled then
            createHighlight(player)
        else
            removeHighlight(player)
        end
    end)
end)

-- Initial highlight application or removal for existing players
for _, player in pairs(Players:GetPlayers()) do
    if chamsEnabled then
        createHighlight(player)
    else
        removeHighlight(player)
    end

    player.CharacterAdded:Connect(function()
        if chamsEnabled then
            createHighlight(player)
        else
            removeHighlight(player)
        end
    end)
end

-- Example GUI toggle function (replace this with your actual GUI library implementation)
Section:NewToggle("Chams Toggle", "Toggle chams effect on/off", function(state)
    toggleChams(state)
    game.StarterGui:SetCore("SendNotification", {
Title = "Chams"; -- the title 
Text = "Turned Chams On/Off"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

-- Optional: You can also connect to RenderStepped for continuous updates, if needed
-- RunService.RenderStepped:Connect(updateHighlights)



local Tab = Window:NewTab("Other Scripts")

local Section = Tab:NewSection("Admin")

Section:NewButton("PrizzAdmin/Pladmin (best script in my opinion)", "PrizzSdmin Made By thestrongestman8080", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Prizz-Admin-14511"))()
end)

Section:NewButton("Tiger Admin", "ButtonInfo", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Prison-Life-Tiger-Admin-V3-16127"))()
end)

local Section = Tab:NewSection("Fly GUI")

Section:NewButton("Fly GUI V3", "Executes Fly GUI V3", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

local Tab = Window:NewTab("Teams")

local Section = Tab:NewSection("Teams")

Section:NewButton("Criminal", "Sets You To Criminal Team", function()
    -- Define the target position for teleportation
local targetPosition = CFrame.new(-920.510803, 92.2271957, 2138.27002)

-- Wait for the player's character to load
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Teleport the player
humanoidRootPart.CFrame = targetPosition
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Team"; -- the title 
Text = "Set Your Team To Criminal"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Guard", "Sets You To Guard Team", function()
    Workspace.Remote.TeamEvent:FireServer("Bright blue")
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Team"; -- the title 
Text = "Set Your Team To Guard"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Inmate", "Sets You To Inmate Team", function()
    Workspace.Remote.TeamEvent:FireServer("Bright orange")
    wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Team"; -- the title 
Text = "Set Your Team To Inmate"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Tab = Window:NewTab("Remove/Btools")

local Section = Tab:NewSection("Walls/Doors")

Section:NewButton("Remove Doors", "Removes the Doors", function()
    print("Removed Doors")
    Workspace.Prison_Cellblock.doors:Destroy()
			
			for i,v in pairs(workspace:GetChildren())do
					if v.Name == "Doors" then
				v:Destroy()
			end
	end
	wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Doors Removed"; -- the title 
Text = "Removed The Doors"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Section = Tab:NewSection("Btools/f3x (client)")

Section:NewButton("Btools", "Gives You Btools", function()
    print("Gave Btools")
    local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	tool1.BinType = "Clone"
	tool2.BinType = "GameTool"
	tool3.BinType = "Hammer"
	tool4.BinType = "Script"
	tool5.BinType = "Grab"
	wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Btools"; -- the title 
Text = "Gave You Btools"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Tab = Window:NewTab("Arrest/tase")

local Section = Tab:NewSection("Arrest")

Section:NewButton("Arrest All", "Arrest Everyone", function()
    wait(0.1)
	Player = game.Players.LocalPlayer
	Pcf = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v.Name ~= Player.Name then
	local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
game.StarterGui:SetCore("SendNotification", {
Title = "Arrest"; -- the title 
Text = "Arresting All"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local Tab = Window:NewTab("Credits/Social")

local Section = Tab:NewSection("Credits: ShowerHeadGG")

Section:NewButton("Discord", "Copys My Discord to You're Clipboard", function()
    setclipboard("https://discord.com/invite/yH5cUWE4DZ")
    game.StarterGui:SetCore("SendNotification", {
Title = "Thank You"; -- the title 
Text = "Thank You For Joining The Discord"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

Section:NewButton("Youtube", "Copys My Youtube to You're Clipboard", function()
    setclipboard("youtube.com/@ShowerHeadGG")
    game.StarterGui:SetCore("SendNotification", {
Title = "Thank You"; -- the title 
Text = "Thank You For Watching the Youtube"; -- what the text says 
Duration = 3; -- how long the notification should in secounds
})
end)

local gui = Instance.new("ScreenGui")
gui.Name = "ToggleUi"
gui.Parent = game.CoreGui

--screengui = gui

	local TextButton = Instance.new("TextButton")
-- Text
TextButton.Text = "Toggle"
TextButton.TextSize = 14
-- Color
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundColor3 = Color3.new(0, 1, 1)
TextButton.BorderColor3 = Color3.new(1, 1, 1)
-- thickness
TextButton.BorderSizePixel = 4
-- Text Code
TextButton.Font = Enum.Font.Code
-- Size
TextButton.Size = UDim2.new(0.1, 0, 0.1, 0)
-- Posisition
TextButton.Position = UDim2.new(0, 0, 0.4, 0)
-- Function
TextButton.MouseButton1Click:Connect (function()
Library:ToggleUI()
end)
TextButton.Parent = gui
TextButton.Draggable = true

	local cornerUI = Instance.new("UICorner")
cornerUI.CornerRadius = UDim.new(0, 5)
cornerUI.Parent = TextButton

	local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.new(0, 0, 0)
    uiStroke.Thickness = 2
    uiStroke.Parent = TextButton
    

