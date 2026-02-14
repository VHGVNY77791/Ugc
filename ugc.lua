local Players = game:GetService("Players")
local player = Players.LocalPlayer

local UGC_ID = "1744060292"

local function wear(char)
    local hum = char:WaitForChild("Humanoid")

    for i = 1,8 do
        task.wait(1)

        local ok, acc = pcall(function()
            return game:GetObjects("rbxassetid://"..UGC_ID)[1]
        end)

        if ok and acc then
            hum:AddAccessory(acc)
            print("UGC WORN")
            break
        else
            print("retry...", i)
        end
    end
end

if player.Character then
    wear(player.Character)
end

player.CharacterAdded:Connect(wear)
