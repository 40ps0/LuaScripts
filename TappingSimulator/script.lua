local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua"))()
local window = library:CreateWindow("Ultra Clicks")

local f1 = window:CreateFolder("Main")
local f2 = window:CreateFolder("Misc")

f1:Toggle("AutoClick", function(x)
    getgenv().auto = x;
    sdda = "Autoclick value is "
    print(sdda .. x)
    if not getgenv().auto then return end
    if getgenv().auto then
        while wait() do
            local Event = game:GetService("ReplicatedStorage").PlayerClick
            Event:FireServer()
        end
    end
end)

f1:Toggle("Gamepass AutoClick", function(d)
    getgenv().autoc = d;
    if not getgenv().autoc then return end
    if getgenv().autoc then
        while wait() do
            game:GetService("ReplicatedStorage").ToggleAutoClick:InvokeServer()
        end
    end
end)

f2:Dropdown("Credits", {"UI : Aika & Wally", "Script : ZekGT"}, true, function()
    setclipboard(": <>")
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

f2:Slider("FOX",{
    min = 70;
    max = 120;
    precise = false;
}, function(f)
    game.Workspace.Camera.FOV = f;
end)

f2:Button("Destroy Gui", function()
    for i,v in pairs(game.CoreGui:GetDescendants()) do
        if v.ClassName == "Image Label" and v.Name == "Button" then
            v.Parent.Parent.Parent.Parent.Parent.Parent:Destroy() -- not working lmao xd
        end
    end
end) -- 6 parents

