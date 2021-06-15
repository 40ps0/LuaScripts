# Documentation for KavoUI Library
made this is 1 hours please appreciate my work
# Local Loadstring
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
```
# Create Window
```lua
local Window = Library.CreateLib("KavoUI", "Sentinel")
```
# Create Tab
```lua
local Tab1 = Window:NewTab("Tab Text")
```
# Create Section
```lua
local Section1 = Tab1:NewSection("Section Text")
```
# Create Button
```lua
local button1 = Section1:NewButton("Button Text", "Button Info", function()
    print("Hello World!")
end)
```
# Create Toggle
```lua
local toggle1 = Section1:NewToggle("Toggle Text", "Toggle Info", function(x)
    if x then
        print("toggle true")
    else
        print("toggle false")
    end
end)
```
# Create Slider
```lua
local slider1 = Section1:NewSlider("Slider Text", "Slider Info", 10000, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
    print(v)
end)
```
# Create Dropdown
```lua
local drop1 = Section1:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
```
# Create Textbox
```lua
local txtbox1 = Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)
```

