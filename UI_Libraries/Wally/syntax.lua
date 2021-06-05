--// library loadstring
local varnameforlibrary = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

--// Syntax
local createwindowvar = varnamelibrary:CreateWindow("window text")
local folder1var = createwindowvar:CreateFolder("folder text") -- var = variable ( keep in mind )
folder1var:Button("button text", function()
    print"d"
end)
folder1var:Toggle("toggle text", function(boolean)
    print(boolean)
end)
folder1var:Label("dasdlkasd", {
    TextSize = 25;
    TextColor = Color3.fromRGB(255, 255, 255);
    TextBg = Color3.fromRGB(15, 15,15);
end)

--// Will add More \\--
