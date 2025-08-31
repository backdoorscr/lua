local prem = game.workspace.i.roblox.Barrier
local warning = game.workspace:GetChildren()[27].Part.SurfaceGui.Title
local premdoor = game.workspace:GetChildren()[498]

warning.Text = "[This client IS being modified.]"
if warning.Text == "[This client IS being modified.]" and _G.warningset == nil then
    print("Warning set.")
    _G.warningset = true
    else
    warn("Already set!")
end
task.wait()
if game.workspace.i.roblox.Barrier then
    prem:Destroy()
    print("Destroyed prem!!")
    else
    warn("Already destroyed prem.")
end
task.wait()
premdoor:Destroy()
print("Destroyed premdoor. [PATCHED]")
