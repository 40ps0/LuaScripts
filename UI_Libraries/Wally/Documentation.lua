--// Documentation Made by ZekGT

--// Table
local table = {
  "hello 1",
  "hello 2",
}

--// Local Loadstring Library ( VERY IMPORTANT ), without this the gui won't execute
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zekgt/LuaScripts/main/UI_Libraries/Wally/library.lua"))()

--// Create Window
local windowvariablename = library:CreateWindow("window name")

--// Create Folder
local folder1name = windowvariablename:CreateFolder("folder 1 name")

--// Create Button
folder1name:Button("Button Text", function()
    print("Hello World!") -- the function()
end) -- must have parenthesis to indicate the end of a button

--// Create Label
folder1name:Label("Label Text",{
    TextSize = 25; -- Text Size
    TextColor = Color3.fromRGB(255, 255, 255); -- Text Color ( 255, 255, 255) is white
    BgColor = Color3.fromRGB(69, 69, 69); -- nice
 })

--// Create Toggle
folder1name:Toggle("Toggle Text", function(boolean) -- Boolean : True, False -- Can put whatever you want inside the function() like function(v) or function(d) -- Put any variable
    toggle1 = boolean
    print(toggle1)
end)

--// Create Box
folder1name:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

--// Create Slider
folder1name:Slider("Slider Text",{
    min = 1; -- Min value/lowest value
    max = 100;
    precise = true; -- two decimals 0.01
    }, function(v)
    print(v)
end)

--// Create Dropdown
folder1name:Dropdown("Dropdown text", table, true, function(drpdwnvar) -- true/false, table name or , {"hello 1", "hello 2"}
    print(drpdwnvar)
end)

--// Create Keybind
folder1name:Bind("bind text", Enum.KeyCode.RightControl, function()
    print("?") -- will print "?" if you pressed RightControl and will toggle ui on/off ( ofc ), open console to see it do /console or F9 or Fn + F9
end)
