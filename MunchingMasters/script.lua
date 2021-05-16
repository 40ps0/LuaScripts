-- My guy didn't replace his name with LocalPlayer what an idiot lmao ez
print("loaded")

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Munching Masters", 5013109572)

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
local MSection = page:addSection("Main")

venyx:Notify("Note", "Made by Peezyte")

MSection:addButton("Destroy annoying shit", function()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.SellPrompt:Destroy()
	venyx:Notify("Bruh Note : ", "the sellprompt gui pissed the fuck out of me")
end)

MSection:addToggle("AutoEat", nil, function(v)
	getgenv().autoeat = v;
    while wait() do
        if not getgenv().autoeat then return end
        if autoeat == true then
            local Event = game:GetService("ReplicatedStorage").Events.Player.Eat:FireServer("Eat")
        end
end
end)

MSection:addToggle("AutoSell", nil, function(v)
	getgenv().autosell = v;
    while true do
        if not getgenv().autosell then return end
		game:GetService("Workspace").SELL["Pad"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game:GetService("Workspace").SELL["Pad"].CFrame = CFrame.new(0,0,0)
		wait(0.1)
end
end)

MSection:addButton("Open Shop", function()
	game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Shop.Visible = true
end)

MSection:addButton("Note", function()
	venyx:Notify("Note :", "Sell Circle wont work after your activated autosell, from now on use Auto Sell or gay")
end)

local tps = page:addSection("Teleports")
tps:addTextbox("No features yet :)", "suggest some", function(value)
	print(value)
end)


local page = venyx:addPage("Local Player")
local lpsec = page:addSection("Local Player")

lpsec:addSlider("Walkspeed", 16, 16, 500, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

lpsec:addSlider("JumpPower", 50, 50, 1000, function(v)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

local page = venyx:addPage("Misc")
local miscs = page:addSection("Misc")

miscs:addKeybind("UI Toggle", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

miscs:addButton("Destroy GUI", function()
	game:GetService("CoreGui")["Munching Masters"]:Destroy()
	venyx:Notify("Success")
end)

miscs:addButton("Note", function()
	venyx:Notify("Note","owner is playing genshin impact lol what idiot ez")
end)

miscs:addButton("Credits", function()
	venyx:Notify("Credits", "Credits to GreenDeno for the UI and ZekGT for the script")
end)
