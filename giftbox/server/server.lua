
ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem(Config.Useitem , function(source) 

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem(Config.Useitem,1)

	TriggerClientEvent('boxrandom', source)

end)

RegisterServerEvent("gift_box")
AddEventHandler('gift_box', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xItem = xPlayer.getInventoryItem(Config.ItemName)
	local xItemCount = math.random(Config.ItemCount[1], Config.ItemCount[2])

	if xItem.limit ~= -1 and xItem.count >= xItem.limit then
		TriggerClientEvent("pNotify:SendNotification", source, {
			text = '<span class="red-text">ของเต็ม</span> ',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		}) 
	else
		if xItem.limit ~= -1 and (xItem.count + xItemCount) > xItem.limit then
			xPlayer.setInventoryItem(xItem.name, xItem.limit)
		else
			xPlayer.addInventoryItem(xItem.name, xItemCount)
		end

		-- Itemother --
		if Config.Itemother ~= nil then
			for k,v in pairs(Config.Itemother) do
				if math.random(1, 100) <= v.Percent then
					xPlayer.addInventoryItem(v.ItemName, v.ItemCount)
				end
			end
		end

	end


end)

------------------------------------------------------------------------------------------------------------------------------------------
ESX.RegisterUsableItem(Config.Useitem2 , function(source) 

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem(Config.Useitem2,1)

	TriggerClientEvent('boxrandom2', source)

end)

RegisterServerEvent("gift_box2")
AddEventHandler('gift_box2', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xItem = xPlayer.getInventoryItem(Config.ItemName2)
	local xItemCount = math.random(Config.ItemCount2[1], Config.ItemCount2[2])

	if xItem.limit ~= -1 and xItem.count >= xItem.limit then
		TriggerClientEvent("pNotify:SendNotification", source, {
			text = '<span class="red-text">ของเต็ม</span> ',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		}) 
	else
		if xItem.limit ~= -1 and (xItem.count + xItemCount) > xItem.limit then
			xPlayer.setInventoryItem(xItem.name, xItem.limit)
		else
			xPlayer.addInventoryItem(xItem.name, xItemCount)
		end

		-- Itemother --
		if Config.Itemother2 ~= nil then
			for k,v in pairs(Config.Itemother2) do
				if math.random(1, 100) <= v.Percent then
					xPlayer.addInventoryItem(v.ItemName2, v.ItemCount2)
				end
			end
		end

	end


end)

------------------------------------------------------------------------------------------------------------------------------------------
ESX.RegisterUsableItem(Config.Useitem3 , function(source) 

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem(Config.Useitem3,1)

	TriggerClientEvent('boxrandom3', source)

end)

RegisterServerEvent("gift_box3")
AddEventHandler('gift_box3', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xItem = xPlayer.getInventoryItem(Config.ItemName3)
	local xItemCount = math.random(Config.ItemCount3[1], Config.ItemCount3[2])

	if xItem.limit ~= -1 and xItem.count >= xItem.limit then
		TriggerClientEvent("pNotify:SendNotification", source, {
			text = '<span class="red-text">ของเต็ม</span> ',
			type = "success",
			timeout = 3000,
			layout = "bottomCenter",
			queue = "global"
		}) 
	else
		if xItem.limit ~= -1 and (xItem.count + xItemCount) > xItem.limit then
			xPlayer.setInventoryItem(xItem.name, xItem.limit)
		else
			xPlayer.addInventoryItem(xItem.name, xItemCount)
		end

		-- Itemother --
		if Config.Itemother3 ~= nil then
			for k,v in pairs(Config.Itemother3) do
				if math.random(1, 100) <= v.Percent then
					xPlayer.addInventoryItem(v.ItemName3, v.ItemCount3)
				end
			end
		end

	end
end)

