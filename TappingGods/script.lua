-- Game Link : https://www.roblox.com/games/5346447287
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua")))()
local forums = Library.new("Tapping Gods")

local AF = forums:NewSection("AutoFarm")

AF:NewToggle("Auto Tap", function(t)
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

AF:NewToggle("Auto Rebirth x1", function(p)
    R = p
    while R do wait()
        local A_1 = 10
        local Event = game:GetService("ReplicatedStorage").Events.Rebirth
        Event:FireServer(A_1)
end
end)

AF:NewToggle("Auto Rebirth x10", function(v)
    AR = v
    while AR do wait()
        local A_1 = 10
        local Event = game:GetService("ReplicatedStorage").Events.Rebirth
        Event:FireServer(A_1)
    end
end)
