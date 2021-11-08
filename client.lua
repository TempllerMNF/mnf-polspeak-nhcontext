
--███╗░░░███╗███╗░░██╗███████╗░█████╗░░█████╗░███╗░░██╗██████╗░██╗░░░██╗
--████╗░████║████╗░██║██╔════╝██╔══██╗██╔══██╗████╗░██║██╔══██╗╚██╗░██╔╝
--██╔████╔██║██╔██╗██║█████╗░░██║░░╚═╝███████║██╔██╗██║██║░░██║░╚████╔╝░
--██║╚██╔╝██║██║╚████║██╔══╝░░██║░░██╗██╔══██║██║╚████║██║░░██║░░╚██╔╝░░
--██║░╚═╝░██║██║░╚███║██║░░░░░╚█████╔╝██║░░██║██║░╚███║██████╔╝░░░██║░░░
--╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═╝░░░░░░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░
--
--██████╗░███████╗██╗░░░██╗███████╗██╗░░░░░░█████╗░██████╗░███╗░░░███╗███████╗███╗░░██╗████████╗
--██╔══██╗██╔════╝██║░░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝████╗░██║╚══██╔══╝
--██║░░██║█████╗░░╚██╗░██╔╝█████╗░░██║░░░░░██║░░██║██████╔╝██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░
--██║░░██║██╔══╝░░░╚████╔╝░██╔══╝░░██║░░░░░██║░░██║██╔═══╝░██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░
--██████╔╝███████╗░░╚██╔╝░░███████╗███████╗╚█████╔╝██║░░░░░██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░
--╚═════╝░╚══════╝░░░╚═╝░░░╚══════╝╚══════╝░╚════╝░╚═╝░░░░░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░
--https://github.com/bzrr/polspeak rewritten with nh-context menu by TempllerMNF
--Dependencies (NH-CONTEXT, InteractSound)
--VISIT US https://mnfcandy.com
--Scripting by TempllerMNF

RegisterCommand("Polspeak", function(source, args, raw)
    TriggerEvent("nh-context:Polspeak")
end)

RegisterNetEvent('nh-context:Polspeak', function()
    TriggerEvent('nh-context:Polspeak', {
        {
            id = 1,
            header = "Цагдаагийн Цэс",
            txt = "Цагаан Хоолой"
        },
        {
            id = 2,
            header = "SWAT RAID",
            txt = "",
            params = {
                event = "polspeak:swat",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "Энэ газрыг чөлөөлнө үү!",
            txt = "",
            params = {
                event = "polspeak:cleararea",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 4,
            header = "Гараа өргө",
            txt = "",
            params = {
                event = "polspeak:handsup",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 5,
            header = "Машинаа зогсоо",
            txt = "",
            params = {
                event = "polspeak:stopthevehicle",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 6,
            header = "Та бүслэгдсэн",
            txt = "",
            params = {
                event = "polspeak:surrounded",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 7,
            header = "Буудлаа шүү!",
            txt = "",
            params = {
                event = "polspeak:shoot",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 8,
            header = "Бүү хөдөл",
            txt = "",
            params = {
                event = "polspeak:dontmove",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 9,
            header = "FUN",
            txt = "",
            params = {
                event = "polspeak:boovon",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
    })
end)


































---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('polspeak:swat', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "swat", 0.6)
end)

AddEventHandler('polspeak:dontmove', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "dontmove", 0.6)
end)

AddEventHandler('polspeak:shoot', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "shoot", 0.6)
end)

AddEventHandler('polspeak:surrounded', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "surrounded", 0.6)
end)

AddEventHandler('polspeak:stopthevehicle', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "stopthevehicle", 0.6)
end)

AddEventHandler('polspeak:handsup', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "handsup", 0.6)
end)

AddEventHandler('polspeak:cleararea', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "cleararea", 0.6)
end)

AddEventHandler('polspeak:boovon', function()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "boovon", 0.6)
end)