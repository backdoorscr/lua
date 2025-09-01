local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
local GROUP_ID = 937709;local TARGET_USERNAME = "OFFFICAL_YUKI"
local notified = false
local Player = Players.LocalPlayer
_G.AlreadyWarned = nil
print("\n\n --- The Script --- \n\n")
local trackedRanks = {
    ["Helper"] = true,
    ["Experienced Helper"] = true,
    ["Supervisor"] = true,
    ["Assistant Manager"] = true,
    ["General Manager"] = true,
    ["Administrator"] = true,
}
local lastKnownRanks = {}
if game.Players.LocalPlayer.PlayerScripts.Independant.KitchenAntiGlitchClient then
    AGKitchen = game.Players.LocalPlayer.PlayerScripts.Independant.KitchenAntiGlitchClient
    AGKitchen:Destroy()
    print("Destroyed Anti Glitch for Kitchen!")
    else
    -- It WILL give an error if it's already destroyed, same goes for others.
end
if game.workspace.StaffAreaBordersP then
    KitchenCheck = game.workspace.StaffAreaBordersP
    KitchenCheck:Destroy()
    print("Destroyed the kitchen checks. You should beable to go into the kitchen now!")
end
if workspace.ExclusiveAreas.KitchenCheck and workspace.ExclusiveAreas.KitchenCheck2 then
    local KC1 = workspace.ExclusiveAreas.KitchenCheck
    local KC2 = workspace.ExclusiveAreas.KitchenCheck2
    KC1:Destroy()
    KC2:Destroy()
    print("Destroyed extra kitchen checks.")
end
warn("You WILL be banned/kicked (if an admin is in game) for exploiting if you go behind the register. Be careful.")
print("\n\n --- things you can do ---\n\n - Make orders\n - Claim registers\n - Pose as an employee\n\n --- Have fun! --- ")
-- functions
local function notifyUser(player, rank)
    StarterGui:SetCore("SendNotification", {
        Title = "an admin is here",
        Text = player.Name .. " (" .. rank .. ") is in-game.",
        Duration = 7.5
    })
    if _G.AlreadyWarned == nil then
        warn("admin(s) is in game. You shouldn't go behind the counter.")
        _G.AlreadyWarned = true
    end
end
local function notifyUserTarget(player)
    StarterGui:SetCore("SendNotification", {
        Title = "Little Miss Bitch Detected",
        Text = player.Name .. " is in the server!",
        Duration = 7.5
    })
    wait(5)
    Player:Kick("Little miss bitch is in the server. [OFFFICAL_YUKI]")
end
local function checkForTarget()
    local target = Players:FindFirstChild(TARGET_USERNAME)
    if target and not notified then
        notified = true
        notifyUserTarget(target)
    elseif not target then
        notified = false
    end
end
local function checkPlayer(player)
    local success, role = pcall(function()
        return player:GetRoleInGroup(GROUP_ID)
    end)

    if success and role then
        local lastRank = lastKnownRanks[player.UserId]
        if trackedRanks[role] and lastRank ~= role then
            notifyUser(player, role)
        end
        lastKnownRanks[player.UserId] = role
    end
end
-- etc etc...
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer then
        checkPlayer(player)
    end
end
Players.PlayerAdded:Connect(function(player)
    checkPlayer(player)
end)
Players.PlayerRemoving:Connect(function(player)
    lastKnownRanks[player.UserId] = nil
end)
RunService.Heartbeat:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            checkPlayer(player)
        end
    end
end)
-- check+
checkForTarget()
task.wait()
Players.PlayerAdded:Connect(function(player)
    if player.Name == TARGET_USERNAME then
        notifyUserTarget(player)
        notified = true
    end
end)
Players.PlayerRemoving:Connect(function(player)
    if player.Name == TARGET_USERNAME then
        notified = false
    end
end)
RunService.Heartbeat:Connect(function()
    checkForTarget()
end)
