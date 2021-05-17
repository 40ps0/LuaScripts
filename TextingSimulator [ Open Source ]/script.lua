local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Texting Simulator", 5013109572)

local main = venyx:addPage("Main")
local man = main:addSection("Main")
local lp = main:addSection("Local Player")
local tem = main:addSection("Team")
local misc = venyx:addPage("Misc")
local mis = misc:addSection("Misc")

lp:addSlider("Walkspeed", 16, 16, 500, function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

lp:addSlider("JumpPower", 50, 50, 500, function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

tem:addButton("Join Team Apple", function()
    local A_1 = "Apple"
    local Event = game:GetService("ReplicatedStorage").Events.TeamJoin
    Event:FireServer(A_1)
end)

tem:addButton("Join Team Droid", function()
    local A_1 = "Droid"
    local Event = game:GetService("ReplicatedStorage").Events.TeamJoin
    Event:FireServer(A_1)
end)


mis:addKeybind("UI Toggle", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end)

mis:addButton("Destroy GUI", function()
    venyx:Notify("Destroy :", "Destroying in 2 Seconds!")
    wait(2)
    game:GetService("CoreGui")["Texting Simulator"]:Destroy()
end)

mis:addButton("Credits", function()
    venyx:Notify("Note :", "Credits to GreenDeno for the UI and ZekGT for the script")
end)

man:addToggle("Auto Text", nil, function(v)
    getgenv().autotext = v;

    while wait() do
        if not getgenv().autotext then return end
        if getgenv().autotext == true then
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts:FireServer("Phone")
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts:FireServer("Computer")
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts:FireServer("Tablet")
            local Event = game:GetService("ReplicatedStorage").Events.SendTexts:FireServer("Game")
        end
    end
end)

man:addToggle("Auto Sell Texts", nil, function(v)
    getgenv().autosell = v;
    while wait() do
        if not getgenv().autosell then return end
        if getgenv().autosell == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-222.12294, 8.87705803, 900.044067)
            wait(0.00000000001)
end
end
end)

man:addToggle("Auto Sell Texts x2", nil, function(r)
    getgenv().haxx = r;
    while wait() do
        if not getgenv().haxx then return end
        if getgenv().haxx then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-74.8419495, 10.510191, 1036.65894)
        end
    end
end)

man:addToggle("Auto Pickup Coins [ MASSIVE LAG ]", nil, function(t)
    venyx:Notify("Note : ", "Will Lag your game, well rip pc")
    getgenv().autopickup = t;
    while getgenv().autopickup do
        if not getgenv().autopickup then return end
        wait()
    for i,v in pairs(game.Workspace.Coin:GetChildren()) do
        if v:IsA("MeshPart") and v.Name == "Coin" then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
end
end
end)

man:addToggle("Auto Pickup Gems [ MASSIVE LAG ]", nil, function(o)
    venyx:Notify("Note :", "Will Lag your game or possibly break your pc")
    getgenv().dia = o;
    while getgenv().dia do
        if not getgenv().dia then return end
        wait()
    for i,v in pairs(game.Workspace.Gems:GetChildren()) do
        if v:IsA("MeshPart") and v.Name == "Gem" then
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end
end
end)

man:addButton("Note for the Quest", function()
    venyx:Notify("IMPORTANT NOTE : ", "You must accept the Sad Tech Boi Quest first for it to work and after you get the phones you must come to him again to get the rewards")
end)

man:addButton("Complete Sad Tech Boi Quest", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-219.563248, 9.05891991, 1020.41974)})
    tween:Play()
    wait(1)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(24.3395996, 8.12924194, 1043.6582, 1, 0, 0, 0, 1, 0, 0, 0, 1)})
    tween:Play()
    wait(1)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(38.7919083, 5.97171021, 762.358093, 0.0436291099, 0.999047995, -4.60445881e-05, 4.60445881e-05, -4.82797623e-05, -1.00000024, -0.999047995, 0.0436293185, -4.82797623e-05)})
    tween:Play()
    wait(1)
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-280.395996, 7.51630068, 761.889771, -1, 0, 0, 0, 1, 0, 0, 0, -1)})   
    tween:Play()
    wait(1)
    local Event = game:GetService("ReplicatedStorage").Events.SaveQ
    Event:FireServer()
end)

man:addButton("Get Alien 3x Screen Laptop HST bullshit", function()
    venyx:Notify("Note :", "This thing is super op")
    local A_1 = "YoureBeingWatched"
    local Event = game:GetService("ReplicatedStorage").Events.EnterPassCode
    Event:FireServer(A_1)
end)


--[[
    Tech Guy SaveQ code : 
    -- Script generated by R2Sv2
-- R2Sv2 developed by Luckyxero
 
local Event = game:GetService("ReplicatedStorage").Events.SaveQ
Event:FireServer()

]]
