getgenv().namehere = "Your Username";

--// Windows and Pages
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("script", "doggocoin", Color3.fromRGB(255, 110, 48), Enum.KeyCode.RightControl)
local main = win:Tab("Main", "http://www.roblox.com/asset/?id=6023426915")
local misc = win:Tab("Misc", "http://www.roblox.com/asset/?id=6022668888")
--// Vars
local ok = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame


main:Label("Teleports")

main:Button("Teleport to Plot", "NOT WORKING ATM .getgenv().namehere must be set to the value of your username for this to work", function()
    for i,v in pairs(game.Workspace._Lots:GetDescendants()) do
        if v.ClassName == "StringValue" and v.Name == "Owner" and v.Value == getgenv().namehere then
            v.Parent.CFrame = ok
        end
    end
end)

main:Button("Teleport to Exchange", "tps to exchange", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32.5371513, 57.4082718, 242.899796)
end)

main:Button("Teleport to Main GPU Shop", "tps to gpu shop in starting world", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(67.1385651, 57.4082603, 239.904587)
end)

main:Button("Premium Shop", "tps to premium shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.74706322, 57.4082718, 241.649796)
end)

main:Button("Shelf Shop", "tps to shelf shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.5741806, 57.4082603, 237.16626)
end)

main:Button("Quests", "tps to quests", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-119.163834, 57.3082542, 207.441315)
end)

main:Button("Area 1", "tps to area 1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.8501024, 57.249073, 200.651169)
end)

main:Button("Area 2", "tps to area 2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-201.856018, 57.1068802, -245.043655)
end)

main:Button("Area 3", "tps to area 3", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-161.25032, 57.4394188, -404.012726)
end)

main:Button("Area 4", "tps to area 4", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-299.804596, 57.183918, -577.437439)
end)

main:Button("Area 5", "tps to area 5", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-522.991333, 57.1839294, -475.341797)
end)

main:Button("Area 6", "tps to area 6", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-663.156128, 57.3261566, -486.102417)
end)

main:Label("Main")

main:Button("ok", "ok", function()
    print"ok"
end)

main:Slider("Walkspeed", "changes ws val", 0,500,16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v;
end)

main:Slider("JumpPower", "changes jmppwr val", 0, 500, 50, function(d)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = d
end)

misc:Dropdown("Credits", {"UI : dawid", "Script : ZekGT"}, function()
    setclipboard("https://github.com/zekgt/ https://pornhub.com/")
end)

misc:Button("Copy Owner's Discord", "ok", function()
    setclipboard("templar knight#3250")
end)

misc:Button("Destroy Gui", "ok", function()
    game.CoreGui.FluxLib:Destroy()
end)
