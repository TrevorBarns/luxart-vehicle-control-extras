--[[
---------------------------------------------------
LUXART VEHICLE CONTROL (FOR FIVEM)
---------------------------------------------------
Last revision: AUGUST 27, 2020  (VERS.3.04)
Coded by Lt.Caine
ELS Clicks by Faction
Additions by TrevorBarns
---------------------------------------------------
FILE: vehicles.lua
PURPOSE: Associate specific sirens with specific
vehicles. Siren assignements. 
---------------------------------------------------
SIREN TONE TABLE: 
	ID- Generic Name	(SIREN STRING)									[vehicles.awc name]
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

	* Notice: 	Enabling these sirens will allow players to use NEW sirens, meaning peoples siren packs need to be updated or they will hear the default sound (yuck). 
				I recommend creating/provideing instructions on how to replace these default sirens AND/OR provide premade sirenpacks. 
]]
--Modify the table below to accurately represent each tone name
tone_table = { "Airhorn", "Wail", "Yelp", "Priority", "CustomA", "CustomB", "CustomC", "CustomE", "CustomF", "CustomG", "Powercall", "QSiren", "Fire Yelp", "Pulsed Airhorn" } 
--[[				  1			2 		3		4			5		6		 7			8			 9			10			11			12			13				14

EXAMPLE:
paleto1 = {1**, 2, 3, 4} 
Where 'paleto1' is the vehicele's <gameName> as defined in vehicles.meta. Spaces will not work, underscores may work though as long as it matches in vehicle.meta. 
Next to that is an array of assigned/allowed sirens IDs: 1=airhorn, 2=wail, 3=yelp, etc.
**THE FIRST NUMBER IN THE ARRAY IS THE AIRHORN SLOT.
]]

--Type A: Basic Operation: operate same as v2 no additional siren tones implemented.
DEFAULT = { 1, 2, 3, 4 } 							--Default is used by any vehicle without a table. 
FIRETRUK = { 12, 13, 14, 11 } 						--Fire Truck Audio (12 - Firetruck Airhorn, 13 - Firetruck Wail, 14 - Firetruck Yelp, 11 - Powercall)
AMBULAN = { 1, 2, 3, 4, 11 } 						--Ambulance (1 - Airhorn, 2 - Wail, 3 - Yelp, 4 - Priority, 5 - Sweep Mode, 11 - Powercall)
LGUARD = { 1, 2, 3, 4, 11 } 						--LifeGuard (1 - Airhorn, 2 - Wail, 3 - Yelp, 4 - Priority, 11 - Powercall)
