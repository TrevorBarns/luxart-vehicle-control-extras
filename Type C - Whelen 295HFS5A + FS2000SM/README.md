# Type C - Whelen 295HFS5A + FS2000SM

#### ACCURATE SIREN TABLE:
```
SIRENS = {	
--[[1]]	  { Name = "295-Airhorn", 		String = "SIRENS_AIRHORN", 			 	                Ref = 0 }, --1
--[[2]]	  { Name = "295-Wail", 			String = "VEHICLES_HORNS_SIREN_1", 	 		            Ref = 0 }, --2
--[[3]]	  { Name = "295-Yelp", 			String = "VEHICLES_HORNS_SIREN_2", 			            Ref = 0 }, --3
--[[4]]	  { Name = "295-Piercer", 		String = "VEHICLES_HORNS_POLICE_WARNING", 		        Ref = 0 }, --4
--[[5]]	  { Name = "295-Hetro", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 		    Ref = 0 }, --5
--[[6]]	  { Name = "FS-Airhorn", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 		    Ref = 0 }, --6
--[[7]]	  { Name = "FS-Wail", 			String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 	    	Ref = 0 }, --7
--[[8]]	  { Name = "FS-Yelp", 			String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 		    Ref = 0 }, --8
--[[9]]	  { Name = "FS-Priority",		String = "RESIDENT_VEHICLES_SIREN_QUICK_02", 	    	Ref = 0 }, --9
--[[10]]  { Name = "FS-Manual",			String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 	    	Ref = 0 }, --10
--[[11]]  { Name = "Powercall", 		String = "VEHICLES_HORNS_AMBULANCE_WARNING", 		    Ref = 0 }, --11
--[[12]]  { Name = "Pulsed Airhorn", 		String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 		Ref = 0 }, --12
--[[13]]  { Name = "QSiren", 			String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
--[[14]]  { Name = "Fire Yelp", 		String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14
}
```
#### EXAMPLE SIREN ASSIGNEMENTS:
```
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4, 5 }, 
['PD1'] = { 1, 2, 3, 4, 5 }     --Whelen 295 Siren				
['SO1'] = { 6, 7, 8, 9, 10 }    --FS2000 Smart Siren

['FIRETRUK'] = { 12, 13, 14, 11 } 	
['AMBULANCE1'] = { 1, 2, 3, 4, 5, 11 } 	--Ambulance 1 w/ department 1 audio (Whelen 295 Siren + Powercall)
['AMBULANCE2'] = { 6, 7, 8, 9, 10, 11 } --Ambulance 2 w/ department 2 audio (FS2000 Smart Siren + Powercall)
}
```



#### CREDITS:
* FS2000 by _ShotsFired932_ - [LCPDFR - Federal Signal And Code 3 Sirens 1.0.0](https://www.lcpdfr.com/downloads/gta5mods/audio/22708-federal-signal-and-code-3-sirens/)
* 295HFS5A by _bakerxgooty_ - [LCPDFR - Whelen 295 Siren | FiveM Ready | Studio Recorded With Real Siren 3.0](https://www.lcpdfr.com/downloads/gta5mods/audio/27116-whelen-295-siren-fivem-ready-studio-recorded-with-real-siren/)
* Misc. Fire by _MrLucky8_ - [LCPDFR - American Fire Sirens 1.1](https://www.lcpdfr.com/downloads/gta5mods/audio/13310-american-fire-sirens)
* [Arkhunter](https://github.com/arkhunter623) for updates and tone name corrections
