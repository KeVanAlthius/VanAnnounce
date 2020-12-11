RegisterCommand("announce", function(source, args)
    TriggerServerEvent("announce", table.concat(args, " "))
end)


RegisterNetEvent('error')
AddEventHandler('error', function(source, args, rawCommand)
    TriggerEvent('chat:addMessage', {
        color = {255,0,0},
        multiline = true,
        args = {'[Error]', 'You do not have permissions for this command'}
    })
end)