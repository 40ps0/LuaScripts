local LogClient = game:GetService('ReplicatedFirst').CC_Lookout
LogClient:Destroy()
local LogEvent = game:GetService('ReplicatedStorage').CC_Lookout
LogEvent:Destroy()

hookfunction(game.Players.LocalPlayer.Kick, newcclosure(function() return wait(9e9) end))

local Eggs = {}
for i,v in pairs(game:GetService('Workspace').Eggs:GetChildren()) do
    table.insert(Eggs, v.Name)
end

local Properties = {
    ['1'] = false,
    ['2'] = false,
    ['3'] = false,
    ['4'] = false,
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local TappingGods = Library.new("Triton")

local Main = TappingGods:NewSection("Main")
local Gamepasses = TappingGods:NewSection('Gamepasses')
local Teleports = TappingGods:NewSection('Teleports')
local Misc = TappingGods:NewSection("Misc")

Main:NewToggle("Auto Tap", function(t)
    AT = t
    while AT do wait()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
    end
print(t)
end)

Main:NewToggle('Auto Boss Boost', function(t)
    if t then
        _G.AutoBoss = true
        while wait() do
        if _G.AutoBoss then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(293.24942, 106.640594, -747.683838)
        game:GetService('ReplicatedStorage').BossStuff.Yes:InvokeServer()
        for i,v in pairs(getconnections(game.Players.LocalPlayer.PlayerGui.CoreUI.Bottom.TapBTN.MouseButton1Down)) do v:Fire() end
        end
        end
    else
        _G.AutoBoss = false
    end
end)

Main:NewToggle('Auto Hatch', function(t)
    if t then
        tweenService, tweenInfo = game:GetService('TweenService'), TweenInfo.new(2, Enum.EasingStyle.Linear)
        Tween = tweenService:Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game:GetService('Workspace').Eggs[_G.SelectedEgg]:FindFirstChild('EggName').Position)})
        Tween:Play()
        _G.AutoHatch = true
        while wait() do
        if _G.AutoHatch then
        game:GetService('ReplicatedStorage').Events.OpenEgg:FireServer(_G.SelectedEgg, nil, nil, nil, Properties)
        end
        end
    else
        _G.AutoHatch = false
    end
end)

Main:NewDropdown('Select Egg', Eggs, function(t)
    _G.SelectedEgg = t
end)

Gamepasses:NewButton('Unlock Auto Tap', function(t)
    local TapGamepass = Instance.new('StringValue')
    TapGamepass.Parent = game:GetService('Players').LocalPlayer
    TapGamepass.Name = 'AutoTapper'
end)

Gamepasses:NewButton('Unlock Auto Rebirth', function(t)
    local RebirthGamepass = Instance.new('StringValue')
    RebirthGamepass.Parent = game:GetService('Players').LocalPlayer
    RebirthGamepass.Name = 'AutoRebirth'
end)

Teleports:NewButton("Carnival", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-688.121521, 587.162537, -547.062256)})
    tween:Play()
end)

Teleports:NewButton("Dino Land", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-636.116455, 1311.11646, -1647.51538)})
    tween:Play()
end)

Teleports:NewButton("Boss Island", function()
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(1, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-869.06073, 758.863403, -56.64991)})
    tween:Play()
end)

Misc:NewKeybind("Keybind UI", Enum.KeyCode.RightControl, function()
    TappingGods:UIMinimize()
end)
