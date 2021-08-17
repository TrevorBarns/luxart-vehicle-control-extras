# Type B - TouchMaster Delta

#### ACCURATE SIREN TABLE:
```
SIRENS = {	
--[[1]]	  { Name = "Airhorn", 		String = "SIRENS_AIRHORN", 								Ref = 0 }, --1
--[[2]]	  { Name = "Wail", 			String = "VEHICLES_HORNS_SIREN_1", 						Ref = 0 }, --2
--[[3]]	  { Name = "Yelp", 			String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
--[[4]]	  { Name = "Priority", 		String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
--[[5]]	  { Name = "Futura", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
--[[6]]	  { Name = "Hetro", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
--[[7]]	  { Name = "Sweep-1[Wail-Yelp]", 		String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
--[[8]]	  { Name = "Sweep-2[Priority-Futura]", 		String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
--[[9]]	  { Name = "Hi-Low",		String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
--[[10]]  { Name = "Whine Down",	String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
--[[11]]  { Name = "Powercall", 	String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --11
--[[12]]  { Name = "Pulsed Airhorn", 		String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --12
--[[13]]  { Name = "QSiren", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
--[[14]]  { Name = "Fire Yelp", 	String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14
}
```
#### EXAMPLE SIREN ASSIGNEMENTS:
```
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4 }, 
['PD1'] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }   				
['FIRETRUK'] = { 12, 13, 14, 11 } 	
}
```



#### CREDITS:
* TouchMaster Delta by _bakerxgooty_ - [LCPDFR - Touchmaster Delta Siren | FiveM Ready | Studio Recorded 2.0](https://www.lcpdfr.com/downloads/gta5mods/audio/26135-touchmaster-delta-siren-fivem-ready-studio-recorded/)
* Misc. Fire by _MrLucky8_ - [LCPDFR - American Fire Sirens 1.1](https://www.lcpdfr.com/downloads/gta5mods/audio/13310-american-fire-sirens)
* [Arkhunter](https://github.com/arkhunter623) for updates and tone name corrections
