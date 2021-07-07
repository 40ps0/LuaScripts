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
    getgenv().farm = v; -- Synapse X's getgenv(), this can be optional
    while wait() do -- loops the remote function that gives you clicks which is autofarm
        if not getgenv().farm then return end -- return stops the loop function < this line stops the autofarm if v is valued at false, checks if getgenv().farm is false
        if getgenv().farm then -- Checks if getgenv().farm is true and if it is true it will do a function at line 24
            game:GetService("Workspace").Events.AddClick:FireServer() -- the click function
        end
    end
end)

local slider1 = section2:addSlider("Speed", 0, -100, 100, function(value) -- the walkspeed slider
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value -- walkspeed will be modified 
end)

local slider2 = section2:addSlider("Jump Power", 0, 10, 120, function(val) -- the jumppoer slider
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = val -- jumppower will be modified
end)

local credits = section2:addDropdown("Credits", {"UI : GreenDeno", "doing nothing : ZekGT", "Scripting : otospro"}, function(text)
    setclipboard("https://v3rmillion.net")
end)

local uitoggle = section2:addKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

local button1 = section2:addButton("Destroy Gui", function()
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "test23" then
            v:Destroy()
        end
    end
end)

--[[ Useless Stuff 
      Q. When do I have to use getgenv()?
      A. You have to use it when declaring a global like _G., unlike _G. getgenv() isn't detected since it is made by synapse
]]--

--[[#include <iostream>
using workspace std;


int main() {
    cout << "GoodBye!";
    return 0;
}]]--
