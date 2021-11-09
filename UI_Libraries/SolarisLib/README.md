# Library Loadstring
```lua
local SolarisLib = loadstring(game:HttpGet("https://solarishub.dev/SolarisLib.lua"))()
```
# Create Window 
```lua
local win = SolarisLib:New({
   Name = "SolarisLib",
   FolderToSave = "SolarisLibStuff"
})
```
# Create Tab
```lua
local tab = win:Tab("Tab Title")
```
# Create Section
```lua
local sec = tab:Section("Section Title")
```
# Create Button
```lua
sec:Button("Button", function()
   SolarisLib:Notification("Test", "This is a notification test.")
   print("Button Clicked")
end)
```
# Create Toggle
```lua
sec:Toggle("Toggle", false,"Toggle", function(t)
   print(t)
end)
```
# Create Slider
```lua
sec:Slider("Slider", 0,25,0,2.5,"Slider", function(t)
   print(t)
end)
```
# Create Dropdown
```lua
sec:Dropdown("Dropdown", {"a","b","c","d","e"},"","Dropdown", function(t)
   print(t)
end)
```
# Create Textbox
```lua
sec:Textbox("Textbox", true, function(t)
   print(t)
end)
```
# Create Label
```lua
sec:Label("Label"
```
