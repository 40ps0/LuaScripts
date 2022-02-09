local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))() --someone reuploaded it so I put it in place of the original back up so guy can get free credit.
local Hen = library.new("HenTai HUB", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = Hen:addPage("Test", 5012544693)
local section1 = page:addSection("Section 1")
local section2 = page:addSection("Section 2")

section1:addToggle("Toggle", nil, function(value)
print("Toggled", value)
end)
section2:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
Hen:toggle()
end, function()
print("Changed Keybind")
end)

local slider1 = section2:addSlider("Speed", 0, 16, 500, function(value) -- the walkspeed slider
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value -- walkspeed will be modified 
end)
local slider2 = section2:addSlider("Jump Power Not work", 0, 10, 120, function(val) -- the jumppoer slider
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = val -- jumppower will be modified
end)
section2:addButton("Rejoin",function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
section2:addButton("World",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.99999905, 0.496083677, 59, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
local button1 = section2:addButton("Destroy Gui", function()
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == "HenTai HUB" then
            v:Destroy()
        end
    end
end)
-- second page
local teleport = Hen:addPage("teleport", 5012544693)
local Warp = teleport:addSection("Warp")
-- second page
local theme = Hen:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
Hen:setTheme(theme, color3)
end)
end

-- load
Hen:SelectPage(Hen.pages[1], true) -- no default for more freedom
