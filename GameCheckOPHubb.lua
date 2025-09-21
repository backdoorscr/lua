local placeId = game.PlaceId
print(placeId)

if placeId == 129907376296872 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/OPHubb.lua"))()
elseif placeId == 110113229454709 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/Loaded.lua"))()
else
    warn("Game not supported!")
end
