local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Lifting Simulator", 5013109572)

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),
	TextColor = Color3.fromRGB(255, 255, 255)
}

local page = venyx:addPage("Main", 5012544693)
local msection = page:addSection("Main")

msection:addToggle("Auto Lift", nil, function(value)
    getgenv().autolift = value;
    while wait() do
        if not getgenv().autolift then return end
        local dakskebol = {
            [1] = 'GainMuscle'
            };
            local Target = game:GetService("ReplicatedStorage").RemoteEvent;
            Target:FireServer(dakskebol);
end
    venyx:Notify("Note : ", "Doesn't play the Lift animation but raises your Muscle Value :)")
end)

msection:addToggle("Auto Sell", nil, function(v)
    getgenv().autosell = v;
    while wait() do
        if not getgenv().autosell then return end
        local avto = {
            [1] = 'SellMuscle'
        };
        local Event = game:GetService("ReplicatedStorage").RemoteEvent;
        Event:FireServer(avto)
    end
end)

msection:addButton("Open Shop", function()
    game:GetService("Players").TheAsBeeter.PlayerGui["Main_Gui"]["UpgradeMenu_Frame"].Visible = true
end)

local page = venyx:addPage("Local Player")
local lp = page :addSection("Local Player")

lp:addSlider("WalkSpeed", 16, 16, 1000, function(v)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

lp:addSlider("JumpPower", 50, 50, 1000, function(v)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)


local page = venyx:addPage("Misc")
local plz = page:addSection("Misc")

plz:addKeybind("UI Toggle", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

plz:addButton("Destroy GUI", function()
    game:GetService("CoreGui")["Lifting Simulator"]:Destroy()
end)

plz:addButton("Credits", function()
    venyx:Notify("Credits : ", "Credits to GreenDeno for the UI Library and ZekGT or templar knight#3250 for the script!")
end)
