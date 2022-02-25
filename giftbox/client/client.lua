
ESX = nil
local open = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
end)

function LoadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(10)
	end    
end

RegisterNetEvent("boxrandom")
AddEventHandler("boxrandom", function()

		local pedid = PlayerPedId()

		open = true

		LoadAnimDict('amb@medic@standing@kneel@base')
		LoadAnimDict('anim@gangops@facility@servers@bodysearch@')
		TaskPlayAnim(PlayerPedId(), "amb@medic@standing@kneel@base" ,"base" ,8.0, -8.0, -1, 1, 0, false, false, false )
		TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
		TriggerEvent("esx_inventoryhud:closeInventory")

		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = Config.Time,
			label = "กำลังเปิดกล่อง",
			useWhileDead = false,
			canCancel = false,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			-- animation = {
			-- 	animDict = "amb@medic@standing@kneel@base",
			-- 	anim = "base",
			-- },
			-- animation = {
			-- 	animDict = "anim@gangops@facility@servers@bodysearch@",
			-- 	anim = "player_search",
			-- },
			prop = {
				model = "xm_prop_x17_chest_closed",
				bone = 20190,
				coords = { x = 0.0, y = 0.5, z = -1.0 },
				rotation = { x = 0.0, y = 0.0, z = 0.0 },
			}
		}, function(status)
		if not status then

		ClearPedTasks(pedid)
		open = false
		TriggerServerEvent("gift_box")
		Citizen.Wait(100)
		end
	end)
end)


Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(1)
            if open == true then
                local playerPed = PlayerPedId()
				DisableControlAction(0, 289, true) -- Disable inventory
            end
        end
    end
)

-----------------------------------------------------------------------2---------------------------------------------------------------------------------------
RegisterNetEvent("boxrandom2")
AddEventHandler("boxrandom2", function()

		local pedid = PlayerPedId()

		open = true

		LoadAnimDict('amb@medic@standing@kneel@base')
		LoadAnimDict('anim@gangops@facility@servers@bodysearch@')
		TaskPlayAnim(PlayerPedId(), "amb@medic@standing@kneel@base" ,"base" ,8.0, -8.0, -1, 1, 0, false, false, false )
		TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
		TriggerEvent("esx_inventoryhud:closeInventory")

		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = Config.Time,
			label = "กำลังเปิดกล่อง",
			useWhileDead = false,
			canCancel = false,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			-- animation = {
			-- 	animDict = "amb@medic@standing@kneel@base",
			-- 	anim = "base",
			-- },
			-- animation = {
			-- 	animDict = "anim@gangops@facility@servers@bodysearch@",
			-- 	anim = "player_search",
			-- },
			prop = {
				model = "xm_prop_x17_chest_closed",
				bone = 20190,
				coords = { x = 0.0, y = 0.5, z = -1.0 },
				rotation = { x = 0.0, y = 0.0, z = 0.0 },
			}
		}, function(status)
		if not status then

		ClearPedTasks(pedid)
		open = false
		TriggerServerEvent("gift_box2")
		Citizen.Wait(100)
		end
	end)
end)


-----------------------------------------------------------------------2---------------------------------------------------------------------------------------
RegisterNetEvent("boxrandom3")
AddEventHandler("boxrandom3", function()

		local pedid = PlayerPedId()

		open = true

		LoadAnimDict('amb@medic@standing@kneel@base')
		LoadAnimDict('anim@gangops@facility@servers@bodysearch@')
		TaskPlayAnim(PlayerPedId(), "amb@medic@standing@kneel@base" ,"base" ,8.0, -8.0, -1, 1, 0, false, false, false )
		TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
		TriggerEvent("esx_inventoryhud:closeInventory")

		TriggerEvent("mythic_progbar:client:progress", {
			name = "unique_action_name",
			duration = Config.Time,
			label = "กำลังเปิดกล่อง",
			useWhileDead = false,
			canCancel = false,
			controlDisables = {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			},
			-- animation = {
			-- 	animDict = "amb@medic@standing@kneel@base",
			-- 	anim = "base",
			-- },
			-- animation = {
			-- 	animDict = "anim@gangops@facility@servers@bodysearch@",
			-- 	anim = "player_search",
			-- },
			prop = {
				model = "xm_prop_x17_chest_closed",
				bone = 20190,
				coords = { x = 0.0, y = 0.5, z = -1.0 },
				rotation = { x = 0.0, y = 0.0, z = 0.0 },
			}
		}, function(status)
		if not status then

		ClearPedTasks(pedid)
		open = false
		TriggerServerEvent("gift_box3")
		Citizen.Wait(100)
		end
	end)
end)