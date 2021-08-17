--[[
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Last revision: AUGUST 18 2021  (VERS. 3.2.5)
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
	1 -  CENCOM-Airhorn 		(SIRENS_AIRHORN)								[AIRHORN_EQD]
	2 -  CENCOM-Wail 			(VEHICLES_HORNS_SIREN_1)						[SIREN_PA20A_WAIL]
	3 -  CENCOM-Yelp 			(VEHICLES_HORNS_SIREN_2)						[SIREN_2]
	4 -  CENCOM-Priority 		(VEHICLES_HORNS_POLICE_WARNING)					[POLICE_WARNING]
	5 -  CENCOM-Dozer 		    (RESIDENT_VEHICLES_SIREN_WAIL_01)				[SIREN_WAIL_01]
	6 -  nErgy-Airhorn 		(RESIDENT_VEHICLES_SIREN_WAIL_02)				[SIREN_WAIL_02]
	7 -  nErgy-Wail 		    (RESIDENT_VEHICLES_SIREN_WAIL_03)				[SIREN_WAIL_03]
	8 -  nErgy-Yelp 		    (RESIDENT_VEHICLES_SIREN_QUICK_01)				[SIREN_QUICK_01]
	9 -  nErgy-Piercer 		(RESIDENT_VEHICLES_SIREN_QUICK_02)				[SIREN_QUICK_02]
	10 - nErgy-Super HI-LO-Piercer 	(RESIDENT_VEHICLES_SIREN_QUICK_03)				[SIREN_QUICK_03]
	11 - Powercall 		    (VEHICLES_HORNS_AMBULANCE_WARNING)				[AMBULANCE_WARNING]
	12 - Pulsed Airhorn	 	(VEHICLES_HORNS_FIRETRUCK_WARNING)				[FIRE_TRUCK_HORN]
	13 - QSiren 		    (RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01)		[SIREN_FIRETRUCK_WAIL_01]
	14 - Fire Yelp       	(RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01)	[SIREN_FIRETRUCK_QUICK_01]
	]]
-- CHANGE SIREN NAMES, AUDIONAME, AUDIOREF
SIRENS = {	
--[[1]]	  { Name = "CENCOM-Airhorn", 		String = "SIRENS_AIRHORN", 								Ref = 0 }, --1
--[[2]]	  { Name = "CENCOM-Wail", 			String = "VEHICLES_HORNS_SIREN_1", 						Ref = 0 }, --2
--[[3]]	  { Name = "CENCOM-Yelp", 			String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
--[[4]]	  { Name = "CENCOM-Priority", 		String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
--[[5]]	  { Name = "CENCOM-Dozer", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
--[[6]]	  { Name = "nErgy-Airhorn", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
--[[7]]	  { Name = "nErgy-Wail", 			String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
--[[8]]	  { Name = "nErgy-Yelp", 			String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
--[[9]]	  { Name = "nErgy-Piercer",		String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
--[[10]]  { Name = "nErgy-Super HI-LO-Piercer",		String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
--[[11]]  { Name = "Powercall", 		String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --11
--[[12]]  { Name = "Pulsed Airhorn", 	String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --12
--[[13]]  { Name = "QSiren", 			String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
--[[14]]  { Name = "Fire Yelp", 		String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14
}


--ASSIGN SIRENS TO VEHICLES
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4, 5 }, 
['FIRETRUK'] = { 12, 13, 14, 11 }, 
['AMBULAN'] = { 1, 2, 3, 4, 11 }, 
['LGUARD'] = { 1, 2, 3, 4, 11 },
}
--[[
--Example C: Two Department Operation w/ Fire Rescue
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4, 5 }, 
['PD1'] = { 1, 2, 3, 4, 5 }     --Whelen Cencom Sapphire				
['SO1'] = { 6, 7, 8, 9, 10 }    --Soundoff Signal 400 Series Handheld  

['FIRETRUK'] = { 12, 13, 14, 11 } 	
['AMBULANCE1'] = { 1, 2, 3, 4, 5, 11 } 	--Ambulance 1 w/ department 1 audio (Whelen Cencom Sapphire + Powercall)
['AMBULANCE2'] = { 6, 7, 8, 9, 10, 11 } --Ambulance 2 w/ department 2 audio (Soundoff Signal 400 series + Powercall)
}
]]