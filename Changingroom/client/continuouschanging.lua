
Citizen.CreateThread(function()
    while true do Citizen.Wait(0)
        local p = GetEntityCoords(PlayerPedId())
        for _, info in pairs(config.Zones) do 
            local distance = GetDistanceBetweenCoords(info.loc.x, info.loc.y, info.loc.z, p.x,  p.y,  p.z)
            if distance <= config.setup.distance then
				if  IsControlJustPressed(0, config.setup.key) and IsControlJustPressed(0, config.setup.key) then
					Changingroom(true)
				end
			end
		end
	end
end)

function Changingroom(bool)
    SetCursorLocation(0.917, 0.873)
	SendNUIMessage({
		type = 'HUD', 
		visible = true, 
		SetNuiFocus(true, true)
	})
end

config = {}

config.setup = {
    distance = 1,
    key  = 38,
    key = 51,
    keyname = "~INPUT_PICKUP"
}

config.Ped = {
    PedModel = "s_m_y_cop_01",
    AnimDictionary = "anim@amb@nightclub@peds@",
    Animation = "rcmme_amanda1_stand_loop_cop"
}

config.Zones = { -- the type has to match the type defined in config.Weapons
    --{ Type = "Changing room", loc = vector3(454.07, -980.03, 30.69), h = 89.46 }, -- Example
    { Type = "Changing room", loc = vector3(1862.1, 3688.73, 34.28)}, -- Sandy Shores
    { Type = "Changing room", loc = vector3(454.39, -991.07, 30.69)}, -- MRPD Station
    { Type = "Changing room", loc = vector3(-448.31, 6007.89, 31.72)}, -- Paleto Station
    { Type = "Changing room", loc = vector3(834.67, -1295.02, 28.35)}, -- La Mesa
    { Type = "Changing room", loc = vector3(-1096.83, -843.06, 19.31)}, -- Vespucci

    -- EMS

    -- Everyone else for Civlians
    
}

RegisterKeyMapping("Changing room", "Changing System", "keyboard", config.setup.key)