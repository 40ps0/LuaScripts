# Local Library
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
```
# Create Window 
```lua
local venyx = library.new("Name", 5013109572)
```
# Themes
```lua
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}
```
# Create Page
```lua
local page1 = venyx:addPage("Page Text Label")
```
# Create Section
```lua
local section1 = page1:addSection("Section Text Label")
```
# Create Button
```lua
local button1 = section1:addButton("Button Text Label", function() -- use variables to refer to that button
    print("Button Clicked!")
end)
```
# Create Toggle
```lua
local toggle1 = section1:addToggle("Toggle Text Label", function(v)
    print(v)
    if v == true then
        print("v is now true")
    else
        print("v is now false")
    end
end)
```
# Create Dropdown
```lua
local dropdown1 = section1:addDropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function()
    print("Dropdown Option Clicked!")
end)
```

# Create Slider
```lua
local slider1 = section1:addSlider("Slider Text Label", 16, 0, 500, function(value) -- min, default, max
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
```
# Notify
```lua
venyx:Notify("Notification Title", "Notification Content")
```
# Key Bind
```lua
section1:addKeybind("Keybind Text Label", Enum.KeyCode.RightControl, function()
    venyx:toggle()
end)
```
# Combined
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Name", 5013109572)
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}
local page1 = venyx:addPage("Page Text Label")
local section1 = page1:addSection("Section Text Label")
local button1 = section1:addButton("Button Text Label", function() -- use variables to refer to that button
    print("Button Clicked!")
end)
local toggle1 = section1:addToggle("Toggle Text Label", function(v)
    print(v)
    if v == true then
        print("v is now true")
    else
        print("v is now false")
    end
end)
local dropdown1 = section1:addDropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function()
    print("Dropdown Option Clicked!")
end)
local slider1 = section1:addDropdown("Slider Text Label", 16, 0, 500, function(value) -- min, default, max
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
venyx:Notify("Notification Title", "Notification Content")
section1:addKeybind("Keybind Text Label", Enum.KeyCode.RightControl, function()
    venyx:toggle()
 end)
 ```
# Result
[Click Here](https://i.vgy.me/ZWyna5.jpg)


