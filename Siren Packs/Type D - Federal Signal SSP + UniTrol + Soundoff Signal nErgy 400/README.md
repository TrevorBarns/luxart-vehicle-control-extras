# Type D : Federal Signal SSP + UniTrol + SoundOff Signal nErgy 400 + Fire (Optional WM-ServerSirens Integration.). 
#### ACCURATE SIREN TABLE:
```
SIRENS = {	
--[[1]]	  { Name = "SSP-Airhorn", 	String = "SIRENS_AIRHORN", 	                Ref = 0 }, --1
--[[2]]	  { Name = "SSP-Wail",          String = "VEHICLES_HORNS_SIREN_1", 	        Ref = 0 }, --2
--[[3]]	  { Name = "SSP-Yelp", 	        String = "VEHICLES_HORNS_SIREN_2", 	        Ref = 0 }, --3
--[[4]]	  { Name = "SSP-Priority", 	String = "VEHICLES_HORNS_POLICE_WARNING", 	Ref = 0 }, --4
--[[5]]	  { Name = "UNI-Wail", 	        String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 	Ref = 0 }, --5
--[[6]]	  { Name = "UNI-Yelp",    	String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 	Ref = 0 }, --6
--[[7]]	  { Name = "UNI-Futura", 	String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 	Ref = 0 }, --7
--[[8]]	  { Name = "nErgy-Wail", 	String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 	Ref = 0 }, --8
--[[9]]	  { Name = "nErgy-Yelp", 	String = "RESIDENT_VEHICLES_SIREN_QUICK_02", 	Ref = 0 }, --9
--[[10]]  { Name = "nErgy-Piercer", 	String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 	Ref = 0 }, --10
--[[11]]  { Name = "Powercall", 	String = "VEHICLES_HORNS_AMBULANCE_WARNING", 	Ref = 0 }, --11
--[[12]]  { Name = "Pulsed Airhorn", 	String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 	Ref = 0 }, --12
--[[13]]  { Name = "QSiren", 	        String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
--[[14]]  { Name = "Fire Yelp", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14

--[[Below this line requires the use of WM-ServerSirens using the vehicles.awc Attached in the WM-Sirens Folder. 
    It is not needed to use it but will add the below to the useable sirens.]]

--[[15]]  { Name = "UNI-Hetro", 	String = "SIREN_ALPHA", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --15
--[[16]]  { Name = "Powercall-RUMBLER", String = "SIREN_BRAVO", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --16
--[[17]]  { Name = "Do Not Interfere", 	String = "SIREN_CHARLIE", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --17
--[[18]]  { Name = "Leave Vicinity", 	String = "SIREN_DELTA", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --18
--[[19]]  { Name = "No Loitering", 	String = "SIREN_ECHO", 	        Ref = "DLC_WMSIRENS_SOUNDSET" }, --19
--[[20]]  { Name = "Pull To The Right", String = "SIREN_FOXTROT", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --20
--[[21]]  { Name = "Slow Down",         String = "SIREN_GOLF", 	        Ref = "DLC_WMSIRENS_SOUNDSET" }, --21
--[[22]]  { Name = "Police Canine Search", String = "SIREN_HOTEL", 	Ref = "DLC_WMSIRENS_SOUNDSET" }, --22
}
```
#### EXAMPLE SIREN ASSIGNEMENTS:
```
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
```
#### WM-ServerSirens Integration: 
```
This Comes with the option to add 2 additional siren tones and 6 Voice lines using WM-ServerSirens. 
To utilize these extra tones with this RPF ensure that you have the following resource installed 
https://forum.cfx.re/t/release-wm-serversirens-fivem-server-side-siren-resource-walshey-marcus/1491908
Replace the vehicles.awc located in the dlc_wmsirens folder with the one provided in the WM-ServerSirens Intergration Folder.

```

#### CREDITS:
* All Federal Signal (Unitrol and SSP) and Soundoff Signal 400 Series Siren Tones were obtained from the manafacturs site
* All Voice lines were obtained from the Federal Signals PathFinder Resource Library
* Misc. Fire by _MrLucky8_ - [LCPDFR - American Fire Sirens 1.1](https://www.lcpdfr.com/downloads/gta5mods/audio/13310-american-fire-sirens)
* [Arkhunter](https://github.com/arkhunter623) for updates and tone name corrections
