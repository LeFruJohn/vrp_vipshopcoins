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

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")
	
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vipshopcoins")

vRPnc = Proxy.getInterface("vRP_newcoin")

RegisterServerEvent("givebronzec")
AddEventHandler("givebronzec", function()
	local user_id = vRP.getUserId({source})
	local hascoins = vRPnc.getCoins({user_id})
	local price = 10
	if hascoins >= price then
		vRPnc.takeCoins({user_id, price})
		vRP.addUserGroup({user_id, "VIP Bronze"})
		vRPclient.notify(source,{"~g~You bought VIP Bronze!"})
	else
		vRPclient.notify(source,{"~r~You don't have enough coins !"})
	end
end)

RegisterServerEvent("givesilverc")
AddEventHandler("givesilverc", function()
	local user_id = vRP.getUserId({source})
	local hascoins = vRPnc.getCoins({user_id})
	local price = 20
	if hascoins >= price then
		vRPnc.takeCoins({user_id, price})
		vRP.addUserGroup({user_id, "VIP Silver"})
		vRPclient.notify(source,{"~g~You bought VIP Silver!"})
	else
		vRPclient.notify(source,{"~r~You don't have enough coins !"})
	end
end)

RegisterServerEvent("givegoldc")
AddEventHandler("givegoldc", function()
	local user_id = vRP.getUserId({source})
	local hascoins = vRPnc.getCoins({user_id})
	local price = 30
	if hascoins >= price then
		vRPnc.takeCoins({user_id, price})
		vRP.addUserGroup({user_id, "VIP Gold"})
		vRPclient.notify(source,{"~g~You bought VIP Gold!"})
	else
		vRPclient.notify(source,{"~r~You don't have enough coins !"})
	end
end)

RegisterServerEvent("givediamondc")
AddEventHandler("givediamondc", function()
	local user_id = vRP.getUserId({source})
	local hascoins = vRPnc.getCoins({user_id})
	local price = 40
	if hascoins >= price then
		vRPnc.takeCoins({user_id, price})
		vRP.addUserGroup({user_id, "VIP Diamond"})
		vRPclient.notify(source,{"~g~You bought VIP Diamond!"})
	else
		vRPclient.notify(source,{"~r~You don't have enough coins !"})
	end
end)

RegisterServerEvent("giveemeraldc")
AddEventHandler("giveemeraldc", function()
	local user_id = vRP.getUserId({source})
	local hascoins = vRPnc.getCoins({user_id})
	local price = 50
	if hascoins >= price then
		vRPnc.takeCoins({user_id, price})
		vRP.addUserGroup({user_id, "VIP Emerald"})
		vRPclient.notify(source,{"~g~You bought VIP Emerald!"})
	else
		vRPclient.notify(source,{"~r~You don't have enough coins !"})
	end
end)