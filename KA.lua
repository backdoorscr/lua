-- Killaura State
local killauraState = { running = false, cloneRootPart = nil, originalRootPart = nil, originalRootJoint = nil, lastPositions = {}, specificTarget = nil, rootPartHighlight = nil, targetChanged = false }
local killauraSettings = { Enabled = true, Invisibility = false, Killaura = true, MaxDistance = 30, Visualize = true }
local targetSettings = { Guards = true, Inmates = true, Criminals = true, Hackers = true }

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Forward declare
local killauraLoop

-- Restore state
local function restoreCharacterState()
    local char = Players.LocalPlayer.Character
    if killauraState.originalRootPart and killauraState.cloneRootPart and killauraState.cloneRootPart.Parent then
        killauraState.originalRootPart.CFrame = killauraState.cloneRootPart.CFrame
    end
    if killauraState.rootPartHighlight and killauraState.rootPartHighlight.Parent then killauraState.rootPartHighlight:Destroy() end
    if killauraState.cloneRootPart and killauraState.cloneRootPart.Parent then killauraState.cloneRootPart:Destroy() end
    if killauraState.originalRootPart and killauraState.originalRootPart.Parent ~= char then
        killauraState.originalRootPart.Parent = char
        killauraState.originalRootPart.CanTouch = true
        killauraState.originalRootPart.CanQuery = true
        killauraState.originalRootPart.Velocity = Vector3.zero
        killauraState.originalRootPart.Transparency = 1
        if char then char.PrimaryPart = killauraState.originalRootPart end
    end
    if killauraState.originalRootJoint and killauraState.originalRootJoint.Parent then
        killauraState.originalRootJoint.Enabled = true
    end
    killauraState.running, killauraState.cloneRootPart, killauraState.originalRootPart, killauraState.originalRootJoint, killauraState.rootPartHighlight = false, nil, nil, nil, nil
    killauraState.lastPositions = {}
end

-- Initialize Killaura
local function initializeKillaura()
    if killauraState.running then return end
    local char = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")
    local humanoid = char:WaitForChild("Humanoid")
    if not root or not humanoid or humanoid.Health <= 0 then return end
    killauraState.running = true
    killauraState.originalRootPart = root
    killauraState.originalRootJoint = root:FindFirstChild("RootJoint")
    killauraState.cloneRootPart = root:Clone()
    killauraState.cloneRootPart.Parent = char
    char.PrimaryPart = killauraState.cloneRootPart
    if killauraState.originalRootJoint then killauraState.originalRootJoint.Enabled = false end
    root.Parent = workspace
    root.CanTouch = false
    root.CanQuery = false
    root.Transparency = killauraSettings.Visualize and 0 or 1
    local rootHighlight = Instance.new("Highlight", root)
    rootHighlight.Name = "KillauraRootHighlight"
    rootHighlight.FillColor = Color3.new(1, 1, 1)
    rootHighlight.OutlineColor = Color3.new(1, 1, 1)
    rootHighlight.FillTransparency = 0.5
    killauraState.rootPartHighlight = rootHighlight
    coroutine.wrap(killauraLoop)()
end

-- Killaura Loop
killauraLoop = function()
    local LocalPlayer = Players.LocalPlayer
    local Character = LocalPlayer.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    if not Humanoid then return end
    local meleeEvent = game:GetService("ReplicatedStorage"):WaitForChild("meleeEvent")
    local RootPart, CloneRootPart = killauraState.originalRootPart, killauraState.cloneRootPart

    local function resetRootPartPosition()
        if not RootPart or not CloneRootPart or not CloneRootPart.Parent then return end
        if killauraSettings.Invisibility then
            if CloneRootPart.Velocity.Y == 0 then
                RootPart.CFrame = CloneRootPart.CFrame * CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(90), 0, 0)
            else
                RootPart.CFrame = CloneRootPart.CFrame * CFrame.new(0, -8, 0)
            end
        else
            RootPart.CFrame = CloneRootPart.CFrame
        end
    end

    local function UnequipAll()
        for _, v in pairs(Character:GetChildren()) do
            if v:IsA("Tool") then
                v.Parent = LocalPlayer.Backpack
            end
        end
    end

    local function executeAttack(targetPlayer, targetRoot)
        UnequipAll()
        local humanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
        local Highlight = Instance.new("Highlight", targetPlayer.Character)
        Highlight.FillColor = targetPlayer.Team.TeamColor.Color
        Highlight.OutlineColor = targetPlayer.Team.TeamColor.Color
        local isHacker = false -- Placeholder; integrate passiveAlertState if needed
        repeat
            task.wait()
            if not killauraState.running or not targetPlayer.Character or not humanoid or humanoid.Health <= 0 then break end
            if isHacker then
                local cframe = targetRoot.CFrame
                -- Placeholder for antiHackerSettings
                RootPart.CFrame = cframe
                for i = 1, 5 do -- Default burst
                    meleeEvent:FireServer(targetPlayer)
                end
            else
                RootPart.CFrame = targetRoot.CFrame * CFrame.new(0, -6.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
                meleeEvent:FireServer(targetPlayer)
                RootPart.CFrame = targetRoot.CFrame * CFrame.new(0, -13, 0) * CFrame.Angles(math.rad(90), 0, 0)
            end
        until not targetPlayer.Character or humanoid.Health <= 0 or not killauraState.running
        Highlight:Destroy()
        resetRootPartPosition()
    end

    local function meleeAll()
        if killauraState.specificTarget then
            local target = killauraState.specificTarget
            local char = target.Character
            if not target.Parent or not char then
                killauraState.specificTarget = nil
                killauraState.targetChanged = true
                return
            end
            local humanoid = char:FindFirstChildOfClass("Humanoid")
            local targetRoot = char:FindFirstChild("HumanoidRootPart")
            if not humanoid or humanoid.Health <= 0 or not targetRoot then
                killauraState.specificTarget = nil
                killauraState.targetChanged = true
                return
            end
            executeAttack(target, targetRoot)
            return
        end
        for _, v in pairs(Players:GetPlayers()) do
            local Char = v.Character
            if v ~= LocalPlayer and Char and Char:FindFirstChild("HumanoidRootPart") then
                local HumanoidTarget = Char:FindFirstChild("Humanoid")
                if HumanoidTarget and HumanoidTarget.Health > 0 and not Char:FindFirstChild("ForceField") then
                    local TargetRoot = Char.HumanoidRootPart
                    local isHacker = false -- Placeholder
                    local team = v.Team
                    local isTeamTargeted = team and ((targetSettings.Guards and team.Name == "Guards") or (targetSettings.Inmates and team.Name == "Inmates") or (targetSettings.Criminals and team.Name == "Criminals"))
                    local shouldAttack = (isHacker and targetSettings.Hackers) or (not isHacker and isTeamTargeted)
                    local inRange = (killauraSettings.MaxDistance == 0) or (TargetRoot.Position - RootPart.Position).Magnitude <= killauraSettings.MaxDistance
                    if shouldAttack and inRange then
                        executeAttack(v, TargetRoot)
                    end
                end
            end
        end
    end

    while task.wait() and Humanoid.Health > 0 and killauraState.running do
        if not CloneRootPart or not CloneRootPart.Parent then break end
        resetRootPartPosition()
        if killauraSettings.Killaura then meleeAll() end
    end
    if killauraState.running then restoreCharacterState() end
end

-- Auto-start
Players.LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5)
    initializeKillaura()
end)
if Players.LocalPlayer.Character then initializeKillaura() end

RunService.Heartbeat:Connect(function()
    if killauraState.running and killauraState.originalRootPart and killauraState.originalRootPart.Parent then
        killauraState.originalRootPart.Velocity = Vector3.new(0, 0, 0)
    end
end)
