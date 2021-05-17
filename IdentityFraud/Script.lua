local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Identity Fraud", 5013109572)

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),
	TextColor = Color3.fromRGB(255, 255, 255)
}

local MainPage = venyx:addPage("Main", 5012544693)
local MiscPage = venyx:addPage("Misc")
local section1 = MainPage:addSection("Maze 1")
local maze2 = MainPage:addSection("Maze 2")
local miscs = MiscPage:addSection("Misc")
local uni = MainPage:addSection("Game")

venyx:Notify("Note : ","In Maze 2, Click Bug Fix before pressing any button in that section")

maze2:addButton("Bug Fix", function()
    game.Workspace["Second Doors"].Door2:Destroy()
end)

maze2:addButton("Secret Door ESP", function()
    for i,v in pairs(game.Workspace:FindFirstChild("Door")) do
        if v.ClassName == 'Part' and v.Parent.Name == 'Hedge Maze' then
        local BillboardGui = Instance.new('BillboardGui')
        local TextLabel = Instance.new('TextLabel')
        
        BillboardGui.Parent = v.Parent
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 100, 0, 100)
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(244,244,244)
        TextLabel.BackgroundTransparency = 0.6
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = "Secret Door"
        TextLabel.TextColor3 = Color3.new(15, 15, 15)
        TextLabel.TextScaled = true
        TextLabel.Font = "Gotham"
    end
    end
end)

maze2:addButton("Normal Door ESP", function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.ClassName == 'Part' and v.Parent.Name == 'Second Doors' then
        local BillboardGui = Instance.new('BillboardGui')
        local TextLabel = Instance.new('TextLabel')
        
        BillboardGui.Parent = v.Parent
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 100, 0, 100)
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(244,244,244)
        TextLabel.BackgroundTransparency = 0.6
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = "Doors"
        TextLabel.TextColor3 = Color3.new(15, 15, 15)
        TextLabel.TextScaled = true
        TextLabel.Font = 'Gotham'
    end
    end
end)


miscs:addButton("Destroy GUI", function()
    game:GetService("CoreGui")["Identity Fraud"]:Destroy()
end)

miscs:addKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

miscs:addButton("Credits", function()
    venyx:Notify("Credits", "Credits to GreenDeno for the UI and ZekGT for the UI")
    venyx:Notify("Note : ", "Venyx is the UI Lib btw")
end)

miscs:addButton("Copy Owner's Discord", function()
    setclipboard("templar knight#3250")
    venyx:Notify("Copied!", " ")
end)

section1:addButton("Door ESP", function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.ClassName == 'Part' and v.Parent.Name == 'Doors' then
        local BillboardGui = Instance.new('BillboardGui')
        local TextLabel = Instance.new('TextLabel')
        
        BillboardGui.Parent = v.Parent 
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 100, 0, 100)
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui 
        TextLabel.BackgroundColor3 = Color3.new(0.294117, 0.286274, 0.286274)
        TextLabel.BackgroundTransparency = 0.6
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = "Door"
        TextLabel.TextColor3 = Color3.new(45, 45, 45)
        TextLabel.TextScaled = true
        TextLabel.Font = "Gotham"
    end
    end
end)

section1:addButton("Destroy Door ESP", function()
    game:GetService("Workspace").Doors.BillboardGui:Destroy()
    wait()
    game:GetService("Workspace").Doors.BillboardGui:Destroy()
end)

uni:addButton("Full Bright", function()
    game:GetService("Lighting").Brightness = 2
	game:GetService("Lighting").ClockTime = 14
	game:GetService("Lighting").FogEnd = 100000
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

uni:addSlider("Walkspeed", 16, 16, 500, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

uni:addSlider("JumpPower", 50, 50, 500, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

section1:addButton("Destroy Ceiling", function()
    game:GetService("Workspace").Map.Ceiling:Destroy()
end)






--[[
    Fraud = game:GetService("Workspace").NPCs.Fraud
    
]]

--[[
    game:GetService("Workspace")["Hedge Maze"].Door
]]
