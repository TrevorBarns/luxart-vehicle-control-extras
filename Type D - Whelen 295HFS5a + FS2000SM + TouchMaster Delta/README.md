# Type D : Whelen 295HFS5a + FS2000SM + TouchMaster Delta (w/Fire Rescue). 
#### ACCURATE SIREN TABLE:
```
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
--[[11]]  { Name = "Powercall", 			String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --16
--[[12]]  { Name = "Pulsed Airhorn", 		String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --17
--[[13]]  { Name = "QSiren", 				String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --18
--[[14]]  { Name = "Fire Yelp", 			String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --19
--[[Below this line requires the use of WM-ServerSirens using the vehicles.awc Attached in the WM-Sirens Folder. 
    It is not needed to use it but will add the below to the useable sirens.]]
--[[15]]  { Name = "TMD-Airhorn", 			String = "SIREN_ALPHA", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --11
--[[16]]  { Name = "TMD-Wail", 				String = "SIREN_BRAVO", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --12
--[[17]]  { Name = "TMD-Yelp", 				String = "SIREN_CHARLIE", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --13
--[[18]]  { Name = "TMD-Priority", 			String = "SIREN_DELTA", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --14
--[[19]]  { Name = "TMD-Sweep-1", 			String = "SIREN_ECHO", 									Ref = "DLC_WMSIRENS_SOUNDSET" }, --15
--[[20]]  { Name = "EMPTY", 				String = "SIREN_FOXTROT", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --20
--[[21]]  { Name = "EMPTY", 				String = "SIREN_GOLF", 									Ref = "DLC_WMSIRENS_SOUNDSET" }, --21
--[[22]]  { Name = "EMPTY", 				String = "SIREN_HOTEL", 								Ref = "DLC_WMSIRENS_SOUNDSET" }, --22
}
```
#### EXAMPLE SIREN ASSIGNEMENTS:
```
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4 }, 
['PD#'] = 	{ 1, 2, 3, 4, 5 }, 			-- Whelen 295
['SO#'] = { 6, 7, 8, 9, 10 }, 			-- Federal Signal FS2000SM
['HP#'] = { 11, 12, 13, 14, 15 }, 		-- Touchmaster Delta
['FIRETRUK'] = { 12, 13, 14, 11 } 	
['AMBULANCE1'] = { 1, 2, 3, 4, 11, 5 } 	--Ambulance 1 w/ department 1 audio (Whelen 295 + Powercall)
['AMBULANCE2'] = { 6, 7, 8, 9 ,10, 11 } --Ambulance 2 w/ department 2 audio (FS2000 + Powercall)
['AMBULANCE3'] = { 15, 16, 16, 18, 19, 11 } 	--Ambulance 3 w/ department 3 audio (TouchMaster Delta + Powercall)
}
```
#### WM-ServerSirens Integration: 
```
This Comes with the option to add 2 additional siren tones and 6 Voice lines using WM-ServerSirens. 
To utilize these extra tones with this RPF ensure that you have the following resource installed 
https://forum.cfx.re/t/release-wm-serversirens-fivem-server-side-siren-resource-walshey-marcus/1491908
Replace the vehicles.awc located in the dlc_wmsirens folder with the one provided in the WM-ServerSirens Intergration Folder.

```

#### CREDITS:
* 295HFS5A by _bakerxgooty_ - [LCPDFR - Whelen 295 Siren | FiveM Ready | Studio Recorded With Real Siren 3.0](https://www.lcpdfr.com/downloads/gta5mods/audio/27116-whelen-295-siren-fivem-ready-studio-recorded-with-real-siren/)
* FS2000 Delta by _ShotsFired932_ - [LCPDFR - Federal Signal And Code 3 Sirens 1.0.0](https://www.lcpdfr.com/downloads/gta5mods/audio/22708-federal-signal-and-code-3-sirens/)
* TouchMaster Delta by _bakerxgooty_ - [LCPDFR - Touchmaster Delta Siren | FiveM Ready | Studio Recorded 2.0](https://www.lcpdfr.com/downloads/gta5mods/audio/26135-touchmaster-delta-siren-fivem-ready-studio-recorded/)
* Misc. Fire by _MrLucky8_ - [LCPDFR - American Fire Sirens 1.1](https://www.lcpdfr.com/downloads/gta5mods/audio/13310-american-fire-sirens)
* _arkhunter_ for updates and tone name corrections
