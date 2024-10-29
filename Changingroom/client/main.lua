
RegisterNUICallback("close", function()
	SendNUIMessage({
		type = 'HUD', 
		visible = false, 
		SetNuiFocus(false, false)
	})
end)

RegisterNUICallback("close", function()
	SendNUIMessage({
		type = 'HUD', 
		visible = false, 
		SetNuiFocus(false, false)
	})
end)

RegisterNUICallback("confirm", function()
	SendNUIMessage({
		type = 'HUD', 
		visible = false,
		SetNuiFocus(false, false)
	})	
end)

RegisterNUICallback("confirm", function()
	SendNUIMessage({
		type = 'HUD', 
		visible = false,
		SetNuiFocus(false, false)
	})	
end)

RegisterNUICallback("cancel", function()
	SendNUIMessage({
		type = 'HUD', 
		visible = false, 
		SetNuiFocus(false, false)
	})
end)

RegisterNUICallback("cancel", function()
	SendNUIMessage({
		type = 'HUD', 
		visible = false, 
		SetNuiFocus(false, false)
	})
end)

RegisterCommand("Changingroom", function() Changingroom(true) end)
RegisterKeyMapping("Changingroom", "", "keyboard", "")