local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("test23", 5013109572)

-- themes
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

local page1 = venyx:addPage("Main", 5012544693)
local page2 = venyx:addPage("Misc")
local section1 = page1:addSection("Main")
local section2 = page2:addSection("Misc")

local firstToggle = section1:addToggle("Auto Click", nil , function(v)
    getgenv().farm = v;
    if not getgenv().farm then return end
    while wait() do
        if getgenv().farm then
            game:GetService("Workspace").Events.AddClick:FireServer()
        end
    end
end)

local slider1 = section2:addSlider("Speed", 0, -100, 100, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

local slider2 = section2:addSlider("Jump Power", 0, 10, 120, function(val)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
end)

local credits = section2:addDropdown("Credits", {"UI : GreenDeno", "doing nothing : ZekGT", "Scripting : otospro"}, function(text)
    print(text)
end)

local button1 = section2:addButton("Destroy Gui", function()
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "test23" then
            v:Destroy()
        end
    end
end)

