# Type C : Whelen Cencom Sappire + SoundOff Signal nErgy 400 + Fire. 

#### ACCURATE SIREN TABLE:
```
SIRENS = {	
--[[1]]	  { Name = "Cencom-Airhorn", 		           String = "SIRENS_AIRHORN", 								Ref = 0 }, --1
--[[2]]	  { Name = "Cencom-Wail", 			             String = "VEHICLES_HORNS_SIREN_1", 					Ref = 0 }, --2
--[[3]]	  { Name = "Cencom-Yelp", 			             String = "VEHICLES_HORNS_SIREN_2", 						Ref = 0 }, --3
--[[4]]	  { Name = "Cencom-Priority", 		             String = "VEHICLES_HORNS_POLICE_WARNING", 				Ref = 0 }, --4
--[[5]]	  { Name = "Cencom-Dozer", 		             String = "RESIDENT_VEHICLES_SIREN_WAIL_01", 			Ref = 0 }, --5
--[[6]]	  { Name = "nErgy-Airhorn", 		             String = "RESIDENT_VEHICLES_SIREN_WAIL_02", 			Ref = 0 }, --6
--[[7]]	  { Name = "nErgy-Wail", 			             String = "RESIDENT_VEHICLES_SIREN_WAIL_03", 			Ref = 0 }, --7
--[[8]]	  { Name = "nErgy-Yelp", 			             String = "RESIDENT_VEHICLES_SIREN_QUICK_01", 			Ref = 0 }, --8
--[[9]]	  { Name = "nErgy-Piercer",		             String = "RESIDENT_VEHICLES_SIREN_QUICK_02",			Ref = 0 }, --9
--[[10]]  { Name = "nErgy-Super HI-LO-Piercer",		 String = "RESIDENT_VEHICLES_SIREN_QUICK_03", 			Ref = 0 }, --10
--[[11]]  { Name = "Powercall", 		             String = "VEHICLES_HORNS_AMBULANCE_WARNING", 			Ref = 0 }, --11
--[[12]]  { Name = "Pulsed Airhorn", 	           String = "VEHICLES_HORNS_FIRETRUCK_WARNING", 			Ref = 0 }, --12
--[[13]]  { Name = "QSiren", 			               String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01", 	Ref = 0 }, --13
--[[14]]  { Name = "Fire Yelp", 		             String = "RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01", 	Ref = 0 }, --14
}
```
#### EXAMPLE SIREN ASSIGNEMENTS:
```
SIREN_ASSIGNMENTS = {
--['<gameName>'] = {tones},
['DEFAULT'] = { 1, 2, 3, 4, 5 }, 
['PD1'] = { 1, 2, 3, 4, 5 }     --Whelen Cencom Sapphire 			
['SO1'] = { 6, 7, 8, 9, 10 }    --Soundoff Signal 400 Series Handheld  

['FIRETRUK'] = { 12, 13, 14, 11 } 	
['AMBULANCE1'] = { 1, 2, 3, 4, 5, 11 } 	--Ambulance 1 w/ department 1 audio (Whelen Cencom Shapphire + Powercall)
['AMBULANCE2'] = { 6, 7, 8, 9, 10, 11 } --Ambulance 2 w/ department 2 audio (Soundoff Signal 400 series + Powercall)
}
```


#### CREDITS:
* All Whelen Cencom Sapphire and Soundoff Signal 400 Series Siren Tones were obtained from the manufacturers site or offical tools.
* Misc. Fire by _MrLucky8_ - [LCPDFR - American Fire Sirens 1.1](https://www.lcpdfr.com/downloads/gta5mods/audio/13310-american-fire-sirens)
* [Arkhunter](https://github.com/arkhunter623) for updates and tone name corrections
