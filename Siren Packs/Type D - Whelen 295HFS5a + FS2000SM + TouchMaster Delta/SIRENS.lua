--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Last revision: FEBRUARY 26 2021  (VERS. 3.2.0)
Coded by Lt.Caine
ELS Clicks by Faction
Additions by TrevorBarns
---------------------------------------------------
FILE: SIRENS.lua
PURPOSE: Associate specific sirens with specific
vehicles. Siren assignments. 
---------------------------------------------------
]]
--[[
	1 - Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 - Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 - Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 - Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 - CustomA* 		(RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 - CustomB* 		(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 - CustomC* 		(RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 - CustomE* 		(RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 - CustomF* 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - CustomG* 		(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		(VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - FireHorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - Firesiren 		(RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Firesiren2 	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
]]

--	WM-ServerSiren Support
RequestScriptAudioBank("DLC_WMSIRENS\\SIRENPACK_ONE", false)


-- CHANGE SIREN NAMES, AUDIONAME, AUDIOREF
SIRENS = {	
--[[1]]	  { Name = "295-Airhorn", 			String = "SIRENS_AIRHORN", 								Ref = 0 }, --1
--[[2]]	  { Name = "295-Wail", 				String = "VEHICLES_HORNS_SIREN_1", 						Ref = 0 }, --2
--[[3]]	  { Name = "295-Yelp", 				String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
--[[4]]	  { Name = "295-Piercer", 			String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
--[[5]]	  { Name = "295-Hetro", 			String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
--[[6]]	  { Name = "FS-Airhorn", 			String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
--[[7]]	  { Name = "FS-Wail", 				String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
--[[8]]	  { Name = "FS-Yelp", 				String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
--[[9]]	  { Name = "FS-Priority",			String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
--[[10]]  { Name = "FS-Rumbler",			String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
--[[11]]  { Name = "TMD-Airhorn", 			String = "SIREN_ALPHA", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --11
--[[12]]  { Name = "TMD-Wail", 				String = "SIREN_BRAVO", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --12
--[[13]]  { Name = "TMD-Yelp", 				String = "SIREN_CHARLIE", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --13
--[[14]]  { Name = "TMD-Priority", 			String = "SIREN_DELTA", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --14
--[[15]]  { Name = "TMD-Sweep-1", 			String = "SIREN_ECHO", 									Ref = "DLC_WMSIRENS_SOUNDSET" }, --15
--[[16]]  { Name = "Powercall", 			String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --16
--[[17]]  { Name = "Pulsed Airhorn", 		String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --17
--[[18]]  { Name = "QSiren", 				String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --18
--[[19]]  { Name = "Fire Yelp", 			String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --19
--[[20]]  { Name = "EMPTY", 				String = "SIREN_FOXTROT", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --20
--[[21]]  { Name = "EMPTY", 				String = "SIREN_GOLF", 									Ref = "DLC_WMSIRENS_SOUNDSET" }, --21
--[[22]]  { Name = "EMPTY", 				String = "SIREN_HOTEL", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --22
}


--ASSIGN SIRENS TO VEHICLES
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {airhorn, tone1, tone2, ... , toneN},
['DEFAULT'] = { 1, 2, 3, 4 }, 
['FIRETRUK'] = { 12, 13, 14, 11 }, 
['AMBULAN'] = { 1, 2, 3, 4, 11 }, 
['LGUARD'] = { 1, 5, 6, 7, 11 },
}

--[[
--Example D: Three Department Operation w/ Fire Rescue
```
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {airhorn, tone1, tone2, ... , toneN},
['DEFAULT'] = { 1, 2, 3, 4 }, 
['PD#'] = 	{ 1, 2, 3, 4, 5 }, 			-- Whelen 295
['SO#'] = { 6, 7, 8, 9, 10 }, 			-- Federal Signal FS2000SM
['HP#'] = { 11, 12, 13, 14, 15 }, 		-- Touchmaster Delta
['FIRETRUK'] = { 12, 13, 14, 11 } 	
['AMBULANCE1'] = { 1, 2, 3, 4, 11, 5 } 			--Ambulance 1 w/ department 1 audio (Whelen 295 + Powercall)
['AMBULANCE2'] = { 6, 7, 8, 9 ,10, 11 } 		--Ambulance 2 w/ department 2 audio (FS2000 + Powercall)
['AMBULANCE3'] = { 15, 16, 16, 18, 19, 11 } 	--Ambulance 3 w/ department 3 audio (TouchMaster Delta + Powercall)
}
```
]]
