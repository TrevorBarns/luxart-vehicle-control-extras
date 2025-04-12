--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Coded by Lt.Caine
ELS Clicks by Faction
Additional Modification by TrevorBarns
Alley Lights Plugin by Christopher M.
---------------------------------------------------
FILE: cl_alleylights.lua
PURPOSE: Contains functions to 
change alley lights state through extras.
---------------------------------------------------
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
---------------------------------------------------
]]

if al_masterswitch then
	AL = {}

	local profile
	local state_al = {}
	local alExtras = {}

	RegisterCommand('lvctoggleleftal', function(source, args, rawCommand)
		if profile and alExtras.left and IsControlPressed(0, 210) then
			if player_is_emerg_driver and ( alExtras.lightbar ~= nil or alExtras.lightbar == -1 ) and veh ~= nil and not IsMenuOpen() then
				if ( IsVehicleExtraTurnedOn(veh, alExtras.lightbar) or alExtras.lightbar == -1 ) and IsVehicleSirenOn(veh) then
					if state_al[veh].left then
						UTIL:TogVehicleExtras(veh, alExtras.left.off, true)
						AUDIO:Play('Downgrade', AUDIO.downgrade_volume)
						state_al[veh].left = false
					else
						UTIL:TogVehicleExtras(veh, alExtras.left.on, true)
						AUDIO:Play('Upgrade', AUDIO.upgrade_volume)
						state_al[veh].left = true
					end
				end
			end
		end
	end, false)

	RegisterCommand('lvctogglerightal', function(source, args, rawCommand)
		if profile and alExtras.right and IsControlPressed(0, 210) then
			if player_is_emerg_driver and ( alExtras.lightbar ~= nil or alExtras.lightbar == -1 ) and veh ~= nil and not IsMenuOpen() then
				if ( IsVehicleExtraTurnedOn(veh, alExtras.lightbar) or alExtras.lightbar == -1 ) and IsVehicleSirenOn(veh) then
					if state_al[veh].right then
						UTIL:TogVehicleExtras(veh, alExtras.right.off, true)
						AUDIO:Play('Downgrade', AUDIO.downgrade_volume)
						state_al[veh].right = false
					else
						UTIL:TogVehicleExtras(veh, alExtras.right.on, true)
						AUDIO:Play('Upgrade', AUDIO.upgrade_volume)
						state_al[veh].right = true
					end
				end
			end
		end
	end, false)

	RegisterCommand('lvctogglefrontal', function(source, args, rawCommand)
		if profile and alExtras.front and IsControlPressed(0, 210) then
			if player_is_emerg_driver and ( alExtras.lightbar ~= nil or alExtras.lightbar == -1 ) and veh ~= nil and not IsMenuOpen() then
				if ( IsVehicleExtraTurnedOn(veh, alExtras.lightbar) or alExtras.lightbar == -1 ) and IsVehicleSirenOn(veh) then
					if state_al[veh].front then
						UTIL:TogVehicleExtras(veh, alExtras.front.off, true)
						AUDIO:Play('Downgrade', AUDIO.downgrade_volume)
						state_al[veh].front = false
					else
						UTIL:TogVehicleExtras(veh, alExtras.front.on, true)
						AUDIO:Play('Upgrade', AUDIO.upgrade_volume)
						state_al[veh].front = true
					end
				end
			end
		end
	end, false)

	RegisterCommand('lvctogglebackal', function(source, args, rawCommand)
		if profile and alExtras.back and IsControlPressed(0, 210) then
			if player_is_emerg_driver and ( alExtras.lightbar ~= nil or alExtras.lightbar == -1 ) and veh ~= nil and not IsMenuOpen() then
				if ( IsVehicleExtraTurnedOn(veh, alExtras.lightbar) or alExtras.lightbar == -1 ) and IsVehicleSirenOn(veh) then
					if state_al[veh].back then
						UTIL:TogVehicleExtras(veh, alExtras.back.off, true)
						AUDIO:Play('Downgrade', AUDIO.downgrade_volume)
						state_al[veh].back = false
					else
						UTIL:TogVehicleExtras(veh, alExtras.back.on, true)
						AUDIO:Play('Upgrade', AUDIO.upgrade_volume)
						state_al[veh].back = true
					end
				end
			end
		end
	end, false)

	RegisterKeyMapping('lvctoggleleftal', "Toggle left alley lights. Requires Left Control to be held.", 'keyboard', 'NUMPAD4')
	RegisterKeyMapping('lvctogglerightal', "Toggle right alley lights. Requires Left Control to be held.", 'keyboard', 'NUMPAD6')
	RegisterKeyMapping('lvctogglefrontal', "Toggle front alley lights. Requires Left Control to be held.", 'keyboard', 'NUMPAD8')
	RegisterKeyMapping('lvctogglebackal', "Toggle rear alley lights. Requires Left Control to be held.", 'keyboard', 'NUMPAD5')

	CreateThread(function()
		Wait(500)
		UTIL:FixOversizeKeys(AL_ASSIGNMENTS)
	end)

	RegisterNetEvent('lvc:onVehicleChange')
	AddEventHandler('lvc:onVehicleChange', function()
		if player_is_emerg_driver and veh ~= nil then
			alExtras, profile = UTIL:GetProfileFromTable('AL ASSIGNMENTS', AL_ASSIGNMENTS, veh, true)

			-- Not set-up for alley lights
			if not profile then return end

			if not state_al[veh] then
				state_al[veh] = {}
				state_al[veh].left = false
				state_al[veh].right = false
				state_al[veh].front = false
				state_al[veh].back = false
			end

			if alExtras.left then UTIL:TogVehicleExtras(veh, state_al[veh].left and alExtras.left.on or alExtras.left.off, true) end
			if alExtras.right then UTIL:TogVehicleExtras(veh, state_al[veh].right and alExtras.right.on or alExtras.right.off, true) end
			if alExtras.front then UTIL:TogVehicleExtras(veh, state_al[veh].front and alExtras.front.on or alExtras.front.off, true) end
			if alExtras.back then UTIL:TogVehicleExtras(veh, state_al[veh].back and alExtras.back.on or alExtras.back.off, true) end
		end
	end)
end
