local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- The Library
local Window = Library.CreateLib("KavoUI", "Sentinel") -- Name, Theme
local Tab1 = Window:NewTab("Tab Text") -- local var = Window:NewTab("name")
local Tab2 = Window:NewTab("Tab Text,")
local Section1 = Tab1:NewSection("Section 1") -- local var = TabVar:NewSection("name")
local Section2 = Tab1:NewSection("Section 2")
local Section3 = Tab2:NewSection("Section 3")
local Button1 = Section1:NewButton("Kill All", "Kills all the Players in the game.Players", function() -- local buttonvar = sectionvar:NewButton("button text", "button info", function()
    getgenv().killall = true;
    if getgenv().killall then
      print("success")
      end
end)
local Toggle1 = Section1:NewToggle("loop print", "prints something in a loop", function(value) -- "toggle text", "toggle info", function(value) <-- can use any variables and is important
    getgenv().loop = value;
    while wait() do -- while <bool> do | While Loop checks for condition then operates function in a loop repeating infinitely
          if not getgenv().loop then return end
          if getgenv().loop then
              print("loop print") -- the function
        end
    end
end)
local Slider1 = Section2:NewSlider("WalkSpeed", "Changes WalkSpeed value", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
local Slider2 = Section2:NewSlider("JumpPower", "Changes JumpPower value", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
local TextBox1 = Section3:NewTextBox("Teleport to Player", "CFrame daba doo doo", function(txt)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[txt].Character.HumanoidRootPart.CFrame
end)
local Button2 = Section2:NewButton("Default WalkSpeed", "sets your walkspeed to default/16", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
local Button3 = Section2:NewButton("Default JumpPower", "sets your jumppower to default/50", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
local Key1 = Section3:NewKeybind("Keybind1", "prints and warns | Check Console do /console in chat", Enum.KeyCode.F, function() -- change Enum.KeyCode.F to whatever key in the keyboard you want like Enum.KeyCode.RightControl
	print("Hello")
  warn("wowzers")
end)
local Key2 = Section3:NewKeybind("Toggle UI", "ui toggle", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)
local dropdown1 = Section3:NewDropdown("Credits", "who made this script", {"UI : xHeptc", "Script : ZekGT"}, function(currentOption)
    print(currentOption)
end)

