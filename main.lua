local validIds = {
    3365505225,
    5415057316,
    5703916605,
    975332451,
    5518947076,
    1618181080,
    4797364268,
    118958032,
    843122288,
    5415057316,
    8157809477
}

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local function destroyAllButtons()
    for _, guiObject in pairs(screenGui:GetChildren()) do
        guiObject:Destroy()
    end
end

local function createNewButtons()
    local newButton1 = Instance.new("TextButton")
    newButton1.Size = UDim2.new(0, 200, 0, 50)
    newButton1.Position = UDim2.new(0.5, -250, 0.6, 0)
    newButton1.Text = "UTTD GUI for Fast Device"
    newButton1.Parent = screenGui

    local newButton2 = Instance.new("TextButton")
    newButton2.Size = UDim2.new(0, 200, 0, 50)
    newButton2.Position = UDim2.new(0.5, 50, 0.6, 0)
    newButton2.Text = "UTTD GUI for Slow Device"
    newButton2.Parent = screenGui

    local newButton3 = Instance.new("TextButton")
    newButton3.Size = UDim2.new(0, 200, 0, 50)
    newButton3.Position = UDim2.new(0.5, -100, 0.7, 0)
    newButton3.Text = "In Game UTTD Script"
    newButton3.Parent = screenGui

    local newButton4 = Instance.new("TextButton")
    newButton4.Size = UDim2.new(0, 200, 0, 50)
    newButton4.Position = UDim2.new(0.5, -100, 0.8, 0)
    newButton4.Text = "True Lab Placer"
    newButton4.Parent = screenGui

    local newButton5 = Instance.new("TextButton")
    newButton5.Size = UDim2.new(0, 200, 0, 50)
    newButton5.Position = UDim2.new(0.5, -100, 0.9, 0)
    newButton5.Text = "Tower Upgrader"
    newButton5.Parent = screenGui

    -- Button click handlers
    newButton1.MouseButton1Click:Connect(function()
        loadstring(game:GetObjects("rbxassetid://129688216370568")[1].Source)()
        destroyAllButtons()
    end)

    newButton2.MouseButton1Click:Connect(function()
        loadstring(game:GetObjects("rbxassetid://133867610844208")[1].Source)()
        destroyAllButtons()
    end)

    newButton3.MouseButton1Click:Connect(function()
        loadstring(game:GetObjects("rbxassetid://83052694458065")[1].Source)()
        destroyAllButtons()
    end)

    -- New button handlers
    newButton4.MouseButton1Click:Connect(function()
        loadstring(game:GetObjects("rbxassetid://103460447360311")[1].Source)()
        destroyAllButtons()
    end)

    newButton5.MouseButton1Click:Connect(function()
        loadstring(game:GetObjects("rbxassetid://121223982546430")[1].Source)()
        destroyAllButtons()
    end)
end

local player = game.Players.LocalPlayer
if table.find(validIds, player.UserId) then
    createNewButtons()
else
    destroyAllButtons()
end
