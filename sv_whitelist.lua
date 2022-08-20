local WhiteList = true     -- enable/disable whitelist
local WhiteListPlayers = {
    ["76561199124004330"] = true,  -- steamID64
}

local ReasonKick = ""

hook.Add("CheckPassword", "WhiteListEnabled", function( steamid64, ip, svpass, clpass, nick )
    if not WhiteList then return end
    if not WhiteListPlayers[steamid64] then 
        print(Format("%s tried to join the server!(%s)",nick,steamid64))
        return false, ReasonKick
    end
end)

--[[
//////////////////////////////////

            by SiaAme

//////////////////////////////////
