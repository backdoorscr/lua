local placeId = game.PlaceId
print(placeId)

if placeId == 129907376296872 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/OPHubb.lua"))()
elseif placeId == 110113229454709 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/backdoorscr/lua/refs/heads/main/Loaded.lua"))()
elseif placeId == 127805224534849 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/backdoorscr/Loader/refs/heads/main/labubushit.lua"))()
else
    warn("Game not supported!")
end
