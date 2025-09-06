--[[ please do not delete the webhook <3 ]]--
local webhook = string.reverse('moc.drocsid//:sptth')
    .. '/api/webhooks/1413939896640602122/kNLZjEiNW2X61_hkLviXJGhnL78ymIiqwU8v5qA9O-dKVg7fD-rsgYxPi1MZqq8yI7wU'
local data = {
    content = 'Script worked on **' .. identifyexecutor() .. '**! <3\n------------------------------',
    username = identifyexecutor() .. 'Bot',
    avatar_url = 'https://imgs.search.brave.com/DPFpGKTVPXeozkdvyvbpW27YW_KapsZHMjS9dKucLVE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLmt5/bS1jZG4uY29tL2Vu/dHJpZXMvaWNvbnMv/ZmFjZWJvb2svMDAw/LzA1My84OTUvNjct/a2lkLmpwZw',
}
http_request({
    Url = webhook,
    Method = 'POST',
    Headers = { ['Content-Type'] = 'application/json' },
    Body = game:GetService('HttpService'):JSONEncode(data),
})
