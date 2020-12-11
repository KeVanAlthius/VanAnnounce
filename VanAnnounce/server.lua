RegisterNetEvent("announce")
AddEventHandler("announce", function(param)
    if IsPlayerAceAllowed(source, 'van.announce') then
    print("^1[Announcement]^5:" .. param)
    TriggerClientEvent("chat:addMessage", -1, {
        color = {0,255,0},
        multiline = true,
        args = {'[Announcement]', param}
    })
    else
       TriggerClientEvent('error', source)
end
end)
