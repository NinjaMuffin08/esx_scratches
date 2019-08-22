ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('scratch:scratch')
AddEventHandler('scratch:scratch', function()
    Citizen.CreateThread(function()
        Citizen.Wait(100)
        TriggerEvent("pNotify:SendNotification", {text = "Scratching in progress...", type = "info", timeout = 1500, layout = "centerLeft"})
            Citizen.Wait(2000)
                randomChance = math.random(1, 100)
                    if randomChance > 0 and randomChance < 10 then
                        TriggerEvent("pNotify:SendNotification", {text = "You won " .. Config.Amount1 .. "$", type = "success", timeout = 1400, layout = "centerLeft"})
                        TriggerServerEvent('scratch:amount1')
                    elseif randomChance > 10 and randomChance < 18 then
                        TriggerEvent("pNotify:SendNotification", {text = "You won " .. Config.Amount2 .. "$", type = "success", timeout = 1400, layout = "centerLeft"})
                        TriggerServerEvent('scratch:amount2')
                    elseif randomChance > 18 and randomChance < 24 then
                        TriggerEvent("pNotify:SendNotification", {text = "You won " .. Config.Amount3 .. "$", type = "success", timeout = 1400, layout = "centerLeft"})
                        TriggerServerEvent('scratch:amount3')
                    elseif randomChance > 24 and randomChance < 28 then
                        TriggerEvent("pNotify:SendNotification", {text = "You won " .. Config.Amount4 .. "$", type = "success", timeout = 1400, layout = "centerLeft"})
                        TriggerServerEvent('scratch:amount4')
                    elseif randomChance > 28 and randomChance < 100 then
                        TriggerEvent("pNotify:SendNotification", {text = "Unfortunately, you lose.", type = "error", timeout = 1400, layout = "centerLeft"})
                    end
            end)
        end)





