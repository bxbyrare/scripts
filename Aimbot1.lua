local UIS = game.UserInputService
local camera = game.CurrentCamera

function getClosest()
       local closestDistance
       local closestPlayer
       for i,v in pairs(game.Players:GetChildren()) do
           if v ~= game.Players.localPlayers and v.Team ~= game.Players.localPlayer.Team then
            local distance = (game.Players.localPlayer.Character.Head.Position - v.Character.Head.Position).magnitude
            if distance < closestDistance then
            closestDistance = distance
            closestPlayer = v
            end
        end
    end
end

UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
    _G.aim = true
    while wait() do
        camera.CFrame = CFrame.new(camera.Position, getClosest().Head.Position)
        if _G.aim == false then return end
        end
    end
end)

UIS.InputEnded:Connect(function(input)
   if input.UserInputType == Enum.UserInputService.MouseButton2 then
     _G.aim = false
     end
end)

   function getClosest()
       local closestDistance
       local closestPlayer
       for i,v in pairs(game.Players:GetChildren()) do
           if v ~= game.Players.localPlayers and v.Team ~= game.Players.localPlayer.Team then
            local distance = (game.Players.localPlayer.Character.Head.Position - v.Character.Head.Position).magnitude
            if distance < closestDistance then
            closestDistance = distance
            closestPlayer = v
            end
        end
    end
end