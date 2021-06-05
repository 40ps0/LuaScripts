--// Game : https://www.roblox.com/games/6512923934/x100000-Clicks-Ultra-Clickers-4

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zekgt/LuaScripts/main/UI_Libraries/Wally/library.lua"))()
local window = library:CreateWindow("Ultra Clicks")
local f1 = window:CreateFolder("Main")
local f2 = window:CreateFolder("Misc")

f1:Toggle("Auto Click", function(v)
    getgenv().autoclick = v;
    if not getgenv().autoclick then return end
    while wait() do
        if getgenv().autoclick then
            game:GetService("Workspace").Events.AddClick:FireServer()
            game:GetService("Workspace").Events.AddClick:FireServer()
            game:GetService("Workspace").Events.AddClick:FireServer()
            game:GetService("Workspace").Events.AddClick:FireServer()
        end
    end
end)

f1:Button("Teleport to Desert", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-46.4405479, -25.5681648, 482.139038)})
    tween:Play()
end)

f1:Button("Teleport to Snow Land", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-348.177856, -25.8389587, 485.012451)
end)

f1:Button("Teleport to Forest", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.036011, -25.5681648, 483.672058)
end)

f2:Bind("Keybind", Enum.KeyCode.RightControl, function()
    warn("<eof> expected : 6969420")
end)

f2:Dropdown("Credits", {"UI : Aika & Wally", "Script : ZekGT"}, true, function()
    print("sadad")
end)

f2:Slider("Walkspeed",{
    min = 16;
    max = 500;
    precise = false;
}, function(p)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = p;
end)

f2:Slider("JumpPower",{
    min = 50;
    max = 1000;
    precise = false;
}, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t;
end)
