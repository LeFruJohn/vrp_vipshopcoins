--[[
	Credit: LeFruJohn#5854
	##########
   # VIP Shop #
	##########

   $############################################################################################################################################################$

	[$[]$]                             [$[]$][$[]$][$[]$][$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$][$[]$][$[]$][$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$]                             [$[]$]
	[$[]$][$[]$][$[]$][$[]$            [$[]$][$[]$][$[]$][$[]$]

   $################################################################################################################################################################$

	[$[]$][$[]$][$[]$][$[]$]           [$[]$][$[]$][$[]$][$[]$]                    [$[]$]            [$[]$]       
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]
	[$[]$][$[]$][$[]$][$[]$]           [$[]$][$[]$][$[]$][$[]$]                    [$[]$]            [$[]$]
	[$[]$]                             [$[]$][$[]$]                                [$[]$]            [$[]$]
	[$[]$]                             [$[]$]    [$[]$]                            [$[]$]            [$[]$] 
	[$[]$]                             [$[]$]        [$[]$]                        [$[]$]            [$[]$]
	[$[]$]                             [$[]$]            [$[]$]                    [$[]$]            [$[]$]      
	[$[]$]                             [$[]$]                [$[]$]                [$[]$]            [$[]$]
	[$[]$]                             [$[]$]                    [$[]$]            [$[]$][$[]$][$[]$][$[]$]

   $##################################################################################################################################################################$

                    [$[]$]                 [$[]$][$[]$][$[]$][$[]$]                 [$[]$]                  [$[]$]            [$[]$][$[]$]                      [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]  [$[]$]                    [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]    [$[]$]                  [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]      [$[]$]                [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]        [$[]$]              [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$][$[]$][$[]$][$[]$][$[]$]            [$[]$]          [$[]$]            [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]            [$[]$]          [$[]$]
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]              [$[]$]        [$[]$] 
                    [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]                [$[]$]      [$[]$]
     [$[]$]         [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]                  [$[]$]    [$[]$]
        [$[]$]      [$[]$]            [$[]$]                      [$[]$]            [$[]$]                  [$[]$]            [$[]$]                    [$[]$]  [$[]$]
			   [$[]$]	                   [$[]$][$[]$][$[]$][$[]$]                 [$[]$]                  [$[]$]            [$[]$]                      [$[]$][$[]$]
			   
   $##################################################################################################################################################################$

	]]--

vRP = Proxy.getInterface("vRP")
vRPg = Proxy.getInterface("vrp_vipshopbitcoin")

RegisterNetEvent("menu")
AddEventHandler(
    "menu",
    function()
        menu = not menu
    end
)

local menu = false

Citizen.CreateThread(function()
	while true do
		Wait(1)
		if IsControlJustPressed(1, 244) then
			menu = not menu
		end
		if menu then
			ShowCursorThisFrame()
			DisableControlAction(0, 24, true)
			DisableControlAction(0, 47, true)
			DisableControlAction(0, 58, true)
			DisableControlAction(0, 263, true)
			DisableControlAction(0, 264, true)
			DisableControlAction(0, 257, true)
			DisableControlAction(0, 140, true)
			DisableControlAction(0, 141, true)
			DisableControlAction(0, 142, true)
			DisableControlAction(0, 143, true)
			DisableControlAction(0, 1, true)
			DisableControlAction(0, 2, true)
			DrawRect(0.500, 0.500, 0.300, 0.400, 101, 101, 101, 100)
			drawtxt("~r~SHOP", 1, 1, 0.500, 0.370, 0.90, 46, 163, 152, 255)
			drawtxt("~o~VIP Bronze - 10 Coins", 1, 1, 0.420, 0.430, 0.70, 46, 163, 152, 255)
			drawtxt("VIP Silver - 20 Coins", 1, 1, 0.580, 0.430, 0.70, 46, 163, 152, 255)
			drawtxt("~y~VIP Gold - 30 Coins", 1, 1, 0.420, 0.500, 0.70, 46, 163, 152, 255)
			drawtxt("~b~VIP Diamond - 40 Coins", 1, 1, 0.580, 0.500, 0.70, 46, 163, 152, 255)
			drawtxt("~g~VIP Emerald - 50 Coins", 1, 1, 0.490, 0.570, 0.70, 46, 163, 152, 255)
			if isCursorInPosition(0.420, 0.430, 0.10, 0.10) and IsControlJustPressed(0, 18) then
				TriggerServerEvent("givebronzec")
			end
			if isCursorInPosition(0.580, 0.430, 0.10, 0.10) and IsControlJustPressed(0, 18) then
				TriggerServerEvent("givesilverc")
			end
			if isCursorInPosition(0.420, 0.500, 0.10, 0.10) and IsControlJustPressed(0, 18) then
				TriggerServerEvent("givegoldc")
			end
			if isCursorInPosition(0.580, 0.500, 0.10, 0.10) and IsControlJustPressed(0, 18) then
				TriggerServerEvent("givediamondc")
			end
			if isCursorInPosition(0.490, 0.570, 0.10, 0.10) and IsControlJustPressed(0, 18) then
				TriggerServerEvent("giveemeraldc")
			end
		end
	end
end)

function drawtxt(text, font, centre, x, y, scale, r, g, b, a)
    y = y - 0.010
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function isCursorInPosition(x, y, width, height)
    local sx, sy = 1920, 1080
    local cx, cy = GetNuiCursorPosition()
    local cx, cy = (cx / sx), (cy / sy)

    local width = width / 2
    local height = height / 2

    if (cx >= (x - width) and cx <= (x + width)) and (cy >= (y - height) and cy <= (y + height)) then
        return true
    else
        return false
    end
end