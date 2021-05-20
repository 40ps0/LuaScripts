local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Wasinx Hub", "super natural", Color3.fromRGB(255, 110, 48), Enum.KeyCode.RightControl)
local main = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")
local misc = win:Tab("Misc", "http://www.roblox.com/asset/?id=6022668888")

main:Label("Auto Farm")

main:Toggle("Auto Muscle", "yep", false, function(v)
    getgenv().automuscle = v;
    while wait() do
        if not getgenv().automuscle then return end
        if getgenv().automuscle then
            local A_1 = 
            {
	            [1] = "GainMuscle"
            } 
            local Event = game:GetService("ReplicatedStorage").RemoteEvent
            Event:FireServer(A_1)
        end
    end
end)

main:Toggle("Auto Sell", "yep", false, function(value)
    getgenv().autosell = value;
    while wait() do
        if not getgenv().autosell then return end
        if getgenv().autosell then
            local A_1 = 
            {
	            [1] = "SellMuscle"
            }
            local Event = game:GetService("ReplicatedStorage").RemoteEvent
            Event:FireServer(A_1)
        end
    end
end)

misc:Dropdown("Credits", {"UI : dawid", "Script : ZekGT"}, function()
    setclipboard("https://github.com/zekgt/")
end)

misc:Label("UI Toggle : RightControl")

misc:Button("Destroy Gui", "?? read it nurd", function()
    game:GetService("CoreGui").FluxLib:Destroy()
end)
