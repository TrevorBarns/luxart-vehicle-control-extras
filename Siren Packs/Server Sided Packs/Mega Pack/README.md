# Whelen 295HFS5a, FS2000SM, TouchMaster Delta, Code 3 Mastercom B, Whelen Cencom Gold (w/Fire Rescue). 
#### SIREN TABLE:
```
SIRENS = {	
--[[1]]   { Name = 'Airhorn',       String = 'SIRENS_AIRHORN',                              Ref = 0 },
--[[2]]   { Name = 'Wail',          String = 'VEHICLES_HORNS_SIREN_1',                      Ref = 0 },
--[[3]]   { Name = 'Yelp',          String = 'VEHICLES_HORNS_SIREN_2',                      Ref = 0 },
--[[4]]   { Name = 'Priority',      String = 'VEHICLES_HORNS_POLICE_WARNING',               Ref = 0 },
--[[5]]   { Name = 'CustomA',  		String = 'RESIDENT_VEHICLES_SIREN_WAIL_01',             Ref = 0 },
--[[6]]   { Name = 'CustomB',       String = 'RESIDENT_VEHICLES_SIREN_WAIL_02',             Ref = 0 },
--[[7]]   { Name = 'CustomA',    	String = 'RESIDENT_VEHICLES_SIREN_WAIL_03',             Ref = 0 },
--[[8]]   { Name = 'CustomA',    	String = 'RESIDENT_VEHICLES_SIREN_QUICK_01',            Ref = 0 },
--[[9]]   { Name = 'CustomA',    	String = 'RESIDENT_VEHICLES_SIREN_QUICK_02',            Ref = 0 },
--[[10]]  { Name = 'CustomA',    	String = 'RESIDENT_VEHICLES_SIREN_QUICK_03',            Ref = 0 },
--[[11]]  { Name = 'CustomA',    	String = 'VEHICLES_HORNS_AMBULANCE_WARNING',            Ref = 0 },
--[[12]]  { Name = 'FireHorn',      String = 'VEHICLES_HORNS_FIRETRUCK_WARNING',            Ref = 0 },
--[[13]]  { Name = 'Fire Yelp',     String = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01',   Ref = 0 },
--[[14]]  { Name = 'Fire Yelp',     String = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01',  Ref = 0 },
-- START OF SAS --
--[[15]]  { Name = '295-HORN',         String = 'OISS_SSA_VEHAUD_LSPD_NEW_HORN',             Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'},
--[[16]]  { Name = '295-WAIL',         String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_ADAM',       Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'},
--[[17]]  { Name = '295-YELP',         String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_BOY',        Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'},
--[[18]]  { Name = '295-PIERCER',      String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_CHARLES',    Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'},
--[[19]]  { Name = '295-SWEEP',        String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_DAVID',      Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET'},
--[[20]]  { Name = '295-HETRO',        String = 'OISS_SSA_VEHAUD_LSPD_NEW_SIREN_EDWARD',     Ref = 'OISS_SSA_VEHAUD_LSPD_NEW_SOUNDSET',   Option = 3},
--[[21]]  { Name = 'FS-HORN',          String = 'OISS_SSA_VEHAUD_LSSD_NEW_HORN',             Ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'},
--[[22]]  { Name = 'FS-WAIL',          String = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_ADAM',       Ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'},
--[[23]]  { Name = 'FS-YELP',          String = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_BOY',        Ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'},
--[[24]]  { Name = 'FS-PRIORITY',      String = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_CHARLES',    Ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'},
--[[25]]  { Name = 'FS-WAIL (RBLR)',   String = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_DAVID',      Ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET',   Option = 3},
--[[26]]  { Name = 'FS-YELP (RBLR)',   String = 'OISS_SSA_VEHAUD_LSSD_NEW_SIREN_EDWARD',     Ref = 'OISS_SSA_VEHAUD_LSSD_NEW_SOUNDSET'},
--[[27]]  { Name = 'TMD-HORN',         String = 'OISS_SSA_VEHAUD_BCSO_NEW_HORN',             Ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'},
--[[28]]  { Name = 'TMD-WAIL',         String = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_ADAM',       Ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'},
--[[29]]  { Name = 'TMD-YELP',         String = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_BOY',        Ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'},
--[[30]]  { Name = 'TMD-HETRO',        String = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_CHARLES',    Ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'},
--[[31]]  { Name = 'TMD-SWEEP',        String = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_DAVID',      Ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET'},
--[[32]]  { Name = 'TMD-ULTRA HI-LO',  String = 'OISS_SSA_VEHAUD_BCSO_NEW_SIREN_EDWARD',     Ref = 'OISS_SSA_VEHAUD_BCSO_NEW_SOUNDSET',   Option = 3},
--[[33]]  { Name = 'MCB-HORN',         String = 'OISS_SSA_VEHAUD_SAHP_NEW_HORN',             Ref = 'OISS_SSA_VEHAUD_SAHP_NEW_SOUNDSET'},
--[[34]]  { Name = 'MCB-WAIL',         String = 'OISS_SSA_VEHAUD_SAHP_NEW_SIREN_ADAM',       Ref = 'OISS_SSA_VEHAUD_SAHP_NEW_SOUNDSET'},
--[[35]]  { Name = 'MCB-YELP',         String = 'OISS_SSA_VEHAUD_SAHP_NEW_SIREN_BOY',        Ref = 'OISS_SSA_VEHAUD_SAHP_NEW_SOUNDSET'},
--[[36]]  { Name = 'MCB-HYPER-YELP',   String = 'OISS_SSA_VEHAUD_SAHP_NEW_SIREN_CHARLES',    Ref = 'OISS_SSA_VEHAUD_SAHP_NEW_SOUNDSET'},
--[[37]]  { Name = 'MCB-SWEEP3',       String = 'OISS_SSA_VEHAUD_SAHP_NEW_SIREN_DAVID',      Ref = 'OISS_SSA_VEHAUD_SAHP_NEW_SOUNDSET'},
--[[38]]  { Name = 'MCB-HYPERLO',      String = 'OISS_SSA_VEHAUD_SAHP_NEW_SIREN_EDWARD',     Ref = 'OISS_SSA_VEHAUD_SAHP_NEW_SOUNDSET',   Option = 3},
--[[39]]  { Name = 'CGOLD-HORN',       String = 'OISS_SSA_VEHAUD_FIB_NEW_HORN',              Ref = 'OISS_SSA_VEHAUD_FIB_NEW_SOUNDSET'}, 
--[[40]]  { Name = 'CGOLD-WAIL',       String = 'OISS_SSA_VEHAUD_FIB_NEW_SIREN_ADAM',        Ref = 'OISS_SSA_VEHAUD_FIB_NEW_SOUNDSET'},
--[[41]]  { Name = 'CGOLD-YELP',       String = 'OISS_SSA_VEHAUD_FIB_NEW_SIREN_BOY',         Ref = 'OISS_SSA_VEHAUD_FIB_NEW_SOUNDSET'}, 
--[[42]]  { Name = 'CGOLD-PRIORITY',   String = 'OISS_SSA_VEHAUD_FIB_NEW_SIREN_CHARLES',     Ref = 'OISS_SSA_VEHAUD_FIB_NEW_SOUNDSET'}, 
--[[43]]  { Name = 'CGOLD-SWEEP',      String = 'OISS_SSA_VEHAUD_FIB_NEW_SIREN_DAVID',       Ref = 'OISS_SSA_VEHAUD_FIB_NEW_SOUNDSET'}, 
--[[44]]  { Name = 'CGOLD-SWEEP3',     String = 'OISS_SSA_VEHAUD_FIB_NEW_SIREN_EDWARD',      Ref = 'OISS_SSA_VEHAUD_FIB_NEW_SOUNDSET'}, 
--[[45]]  { Name = 'FIRE HORN',        String = 'OISS_SSA_VEHAUD_LSFD_NEW_HORN',             Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'},
--[[46]]  { Name = 'POWERCALL',        String = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_ADAM',       Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'},
--[[47]]  { Name = 'Q-COAST',          String = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_BOY',        Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'},
--[[48]]  { Name = 'Q-HIGH',           String = 'OISS_SSA_VEHAUD_LSFD_NEW_SIREN_CHARLES',    Ref = 'OISS_SSA_VEHAUD_LSFD_NEW_SOUNDSET'},
--[[49]]  { Name = 'Q-MID',            String = 'OISS_SSA_VEHAUD_BCFD_NEW_SIREN_DAVID',      Ref = 'OISS_SSA_VEHAUD_BCFD_NEW_SOUNDSET'},
--[[50]]  { Name = 'Q-MID2',           String = 'OISS_SSA_VEHAUD_BCFD_NEW_SIREN_EDWARD',     Ref = 'OISS_SSA_VEHAUD_BCFD_NEW_SOUNDSET'},
}
```
#### EXAMPLE SIREN ASSIGNEMENTS:
```
SIREN_ASSIGNMENTS = {
	--['<gameName>'] = {tones},
	['DEFAULT'] = { 1, 2, 3, 4 },
	['295-gameName'] = { 15, 16, 17, 18, 19, 20 },
	['FS-gameName'] = { 21, 22, 23, 24, 25, 26 },
	['TMD-gameName'] = { 27, 28, 29, 30, 31, 32 },
	['MCB-gameName'] = { 33, 34, 35, 36, 37, 38 },
	['CenCom-gameName'] = { 39, 40 ,41, 42, 43, 44 },
	['fire-GameName'] = { 46, 49, 50, 48, 46 },
	['FIRETRUK'] = { 46, 49, 50, 48, 46 },
	['AMBULAN'] = { 46, 49, 50, 48, 46 },
}
```
#### Server Side Sirens and Sounds Required
https://forum.cfx.re/t/free-server-sided-sounds-and-sirens/4777501

#### CREDITS:
* 295HFS5A by _bakerxgooty_ - [LCPDFR - Whelen 295 Siren | FiveM Ready | Studio Recorded With Real Siren 3.0](https://www.lcpdfr.com/downloads/gta5mods/audio/27116-whelen-295-siren-fivem-ready-studio-recorded-with-real-siren/)
* FS2000 Delta by _ShotsFired932_ - [LCPDFR - Federal Signal And Code 3 Sirens 1.0.0](https://www.lcpdfr.com/downloads/gta5mods/audio/22708-federal-signal-and-code-3-sirens/)
* TouchMaster Delta by _bakerxgooty_ - [LCPDFR - Touchmaster Delta Siren | FiveM Ready | Studio Recorded 2.0](https://www.lcpdfr.com/downloads/gta5mods/audio/26135-touchmaster-delta-siren-fivem-ready-studio-recorded/)
* Mastercom B by _bakerxgooty_ - [LCPDFR - Mastercom B Code 3 Siren | Professionally Recorded With My Real Siren 1.2](https://www.lcpdfr.com/downloads/gta5mods/audio/23731-mastercom-b-code-3-siren-professionally-recorded-with-my-real-siren/)
* Cencom Gold by _ShotsFired932_ - [LCPDFR - Whelen Cencom Gold 1.0.0](https://www.lcpdfr.com/downloads/gta5mods/audio/19593-whelen-cencom-gold/)
* Misc. Fire by _MrLucky8_ - [LCPDFR - American Fire Sirens 1.1](https://www.lcpdfr.com/downloads/gta5mods/audio/13310-american-fire-sirens)
