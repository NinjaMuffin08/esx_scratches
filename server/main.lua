ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('scratch', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('scratch:scratch', source)
    xPlayer.removeInventoryItem('scratch', 1)
end)

RegisterServerEvent('scratch:amount1')
AddEventHandler('scratch:amount1', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local Amount1 = Config.Amount1
    xPlayer.addMoney(Amount1)
end)

RegisterServerEvent('scratch:amount2')
AddEventHandler('scratch:amount2', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local Amount2 = Config.Amount2
    xPlayer.addMoney(Amount2)
end)

RegisterServerEvent('scratch:amount3')
AddEventHandler('scratch:amount3', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local Amount3 = Config.Amount3
    xPlayer.addMoney(Amount3)
end)

RegisterServerEvent('scratch:amount4')
AddEventHandler('scratch:amount4', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    local Amount4 = Config.Amount4
    xPlayer.addMoney(Amount4)
end)