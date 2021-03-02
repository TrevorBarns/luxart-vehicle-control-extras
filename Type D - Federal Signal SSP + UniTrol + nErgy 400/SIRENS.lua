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
SIREN TONE TABLE: 
	ID- Generic Name	    (SIREN STRING)									[vehicles.awc name]
	1 -  SSP-Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 -  SSP-Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 -  SSP-Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 -  SSP-Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 -  UNI-Wail 		    (RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 -  UNI-Yelp 			(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 -  UNI-Futura 		(RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 -  nErgy-Wail 		(RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 -  nErgy-Yelp 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - nErgy-Piercer 		(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		    (VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - Pulsed Airhorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - QSiren 		    (RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Fire Yelp       	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
	Below this line requires the use of WM-ServerSirens using the vehicles.awc Attached in the WM-Sirens Folder. It is not needed to use it but will add the below to the useable sirens. 	
	15 - UNI-Hetro          	(SIREN_APLHA)       						[SIREN_APLHA]
	16 - Powercall-RUMBLER  	(SIREN_BRAVO)   							[SIREN_BRAVO]
	17 - Do Not Interfere   	(SIREN_CHARLIE)  							[SIREN_CHARLIE]
	18 - Leave Vicinity     	(SIREN_DELTA)   							[SIREN_DELTA]
	19 - No Loitering   		(SIREN_ECHO)    							[SIREN_ECHO]
	20 - Pull To The Right     	(SIREN_FOXTROT)   							[SIREN_FOXTROT]
	21 - Slow Down    			(SIREN_GOLF)        						[SIREN_GOLF]
	22 - Police Canine Search   (SIREN_HOTEL)     							[SIREN_HOTEL]
	]]
	
--	WM-ServerSiren Support
RequestScriptAudioBank("DLC_WMSIRENS\\SIRENPACK_ONE", false)

-- CHANGE SIREN NAMES, AUDIONAME, AUDIOREF
SIRENS = {	
--[[1]]	  { Name = "SSP-Airhorn", 		String = "SIRENS_AIRHORN", 								Ref = 0 }, --1
--[[2]]	  { Name = "SSP-Wail", 			String = "VEHICLES_HORNS_SIREN_1", 						Ref = 0 }, --2
--[[3]]	  { Name = "SSP-Yelp", 			String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
--[[4]]	  { Name = "SSP-Priority", 		String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
--[[5]]	  { Name = "UNI-Wail", 			String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
--[[6]]	  { Name = "UNI-Yelp", 			String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
--[[7]]	  { Name = "UNI-Futura", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
--[[8]]	  { Name = "nErgy-Wail", 		String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
--[[9]]	  { Name = "nErgy-Yelp",		String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
--[[10]]  { Name = "nErgy-Piercer",		String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
--[[11]]  { Name = "Powercall", 		String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --11
--[[12]]  { Name = "Pulsed Airhorn", 	String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --12
--[[13]]  { Name = "QSiren", 			String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
--[[14]]  { Name = "Fire Yelp", 		String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14
--Below this line requires the use of WM-ServerSirens using the vehicles.awc Attached in the WM-Sirens Folder. It is not needed to use it but will add the below to the useable sirens.
--[[15]]  { Name = "UNI-Hetro", 			String = "SIREN_ALPHA", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --15
--[[16]]  { Name = "Powercall-RUMBLER", 	String = "SIREN_BRAVO", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --16
--[[17]]  { Name = "Do Not Interfere", 		String = "SIREN_CHARLIE", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --17
--[[18]]  { Name = "Leave Vicinity", 		String = "SIREN_DELTA", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --18
--[[19]]  { Name = "No Loitering", 			String = "SIREN_ECHO", 		Ref = "DLC_WMSIRENS_SOUNDSET" }, --19
--[[20]]  { Name = "Pull To The Right", 	String = "SIREN_FOXTROT", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --20
--[[21]]  { Name = "Slow Down", 			String = "SIREN_GOLF", 		Ref = "DLC_WMSIRENS_SOUNDSET" }, --21
--[[22]]  { Name = "Police Canine Search", 	String = "SIREN_HOTEL", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --22
}


--ASSIGN SIRENS TO VEHICLES
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4 }, 
['FIRETRUK'] = { 12, 13, 14, 11 }, 
['AMBULAN'] = { 1, 2, 3, 4, 11 }, 
['LGUARD'] = { 1, 5, 6, 7, 11 },
}
--[[
--Example D: Three Department Operation w/ Fire Rescue
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4 }, 
['PD1'] = { 1, 2, 3, 4 }     --Federal Signal Smart Signal Pro
['SO1'] = { 1, 5, 6, 7 }     --Federal Signal Unitrol
['HP1'] = { 1, 8, 9, 10 }	 --Soundoff Signal 400 Series
['FIRETRUK'] = { 12, 13, 14, 11 } 	
['AMBULANCE1'] = { 1, 2, 3, 4, 11 } 	--Ambulance 1 w/ department 1 audio (Federal Signal SSP + Powercall)
['AMBULANCE2'] = { 1, 5, 6, 7, 11 } --Ambulance 2 w/ department 2 audio (Federal Signal Unitrol + Powercall)
['AMBULANCE3'] = { 1, 8, 9, 10, 11 } --Ambulance 3 w/ department 3 audio (Soundoff Signal 400 series + Powercall)
}
]]