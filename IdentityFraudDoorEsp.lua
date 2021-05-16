section1:addButton("Door ESP", function()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.ClassName == 'Part' and v.Parent.Name == 'Doors' then
        local BillboardGui = Instance.new('BillboardGui') -- Makes Billboardgui
        local TextLabel = Instance.new('TextLabel') -- makes text label
        
        BillboardGui.Parent = v.Parent -- what the billboardgui goes into
        BillboardGui.AlwaysOnTop = true -- if its on top or not
        BillboardGui.Size = UDim2.new(0, 50, 0, 50) -- size of it
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui -- putting textlabel into billboardgui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1) -- color
        TextLabel.BackgroundTransparency = 1 -- transparency
        TextLabel.Size = UDim2.new(1, 0, 1, 0) -- size
        TextLabel.Text = "Door" -- what the label says
        TextLabel.TextColor3 = Color3.new(1, 0, 0) -- color
        TextLabel.TextScaled = true -- if the text is scaled or not
    end
    end
end)
