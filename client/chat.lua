--					 ==========================
--					 Copyright © 2020 SenkaWolf
--					 ==========================

if EnableChatCommand == true then

	Citizen.CreateThread(function()

			TriggerEvent('chat:addSuggestion', '/ooc', 'Out Of Character chat Message. (Global Chat)', {
				{ name="Message", help="Put your questions or help request."}
			})

			TriggerEvent('chat:addSuggestion', '/me', 'Send message in the third person. (Global Chat)', {
				{ name="Action", help="action."}
			})

			TriggerEvent('chat:addSuggestion', '/gme', 'Send message in the third person. (Global Chat)', {
				{ name="Action", help="action."}
			})

			TriggerEvent('chat:addSuggestion', '/do', 'Send action message. (Global Chat)', {
				{ name="Action", help="action."}
			})

			TriggerEvent('chat:addSuggestion', '/ad', 'Send an ad in game (Global Chat)', {
				{ name="Message", help="Ad Message."}
			})

			TriggerEvent('chat:addSuggestion', '/twt', 'Send a Twotter in game. (Global Chat)', {
				{ name="Message", help="Twotter Message."}
			})

			TriggerEvent('chat:addSuggestion', '/darkweb', 'Send a anonymous message in game. (Global Chat)', {
				{ name="Message", help="Anonymous Message."}
			})

	end)

	--Standard Chat
	RegisterNetEvent('SendProximityMessage')
	AddEventHandler('SendProximityMessage', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "^r" .. name .. "", {128, 128, 128}, "^r " .. message)
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "^r" .. name .. "", {128, 128, 128}, "^r " .. message)
	  end
	end)

	--/me Command
	RegisterNetEvent('SendProximityMessageMe')
	AddEventHandler('SendProximityMessageMe', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "", {0, 0, 220}, " ^6 ^*ME | ^7" .. name .."^7: ".."^r " .. message)
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "", {0, 0, 220}, " ^6 ^*ME | ^7" .. name .."^7: ".."^r " .. message)
	  end
	end)

	--/do Command
	RegisterNetEvent('SendProximityMessageDo')
	AddEventHandler('SendProximityMessageDo', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "", {0, 191, 255}, "-> " .. message .. "^0 (" .. name .. ")")
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "", {0, 191, 255}, "-> " .. message .. "^0 (" .. name .. ")")
	  end
	end)

	--/ooc Command
	RegisterNetEvent('SendProximityMessageOoc')
	AddEventHandler('SendProximityMessageOoc', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "", {124, 124, 124}, "- " .. message .. "^0 (" .. name .. ")")
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "", {124, 124, 124}, "- " .. message .. "^0 (" .. name .. ")")
	  end
	end)


	--/dow Command
	RegisterNetEvent('SendProximityMessageDow')
	AddEventHandler('SendProximityMessageDow', function(id, name, message)
	  local myID = PlayerId()
	  local pID = GetPlayerFromServerId(id)
	  if pID == myID then
		TriggerEvent('chatMessage', "", {255, 215, 0}, "<?¿> " .. message .. "^0 (" .. name .. ")")
	  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myID)), GetEntityCoords(GetPlayerPed(pID)), true) < 19.999 then
		TriggerEvent('chatMessage', "", {255, 215, 0}, "<?¿> " .. message .. "^0 (" .. name .. ")")
	  end
	end)
end
