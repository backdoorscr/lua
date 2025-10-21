local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local originalPosition = humanoidRootPart.CFrame
local targetPosition = CFrame.new(-922.20, 95.33, 2134.80)

humanoidRootPart.CFrame = targetPosition
wait(0.175)
humanoidRootPart.CFrame = originalPosition
