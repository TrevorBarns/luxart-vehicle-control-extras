# luxart-vehicle-control-extras
Repository of sirens and vehicles.lua used for examples with Luxart Vehicle Control. See project here: https://github.com/TrevorBarns/luxart-vehicle-control

## LVC Siren Package Types
### Type A: Basic Operation: operate same as v2 no additional siren tones implemented.
### Type B: Maximize LEO Tones: most tones for LEOs (designed for single siren operation).
### Type C: Two Department Operation w/ Fire Rescue (1/2 of tones assigned to one department, 1/2 to the other while retaining Fire Rescue Tones)
### Type D: Three Department Operation w/ Shared Airhorn & Fire Rescue (1/3 tones assigned to department X, 1/3 to department Y, 1/3 to department Z; all sharing one airhorn while retaining Fire Rescue Tones)

## GTA V vehicles.awc Restrictions
Default sirens (what LVC uses) are located in `RESIDENT.rpf/vehicles.awc`. GTA V has a hard cap on vehicles.awc size: __16,132kb__. Any vehicles.awc over that even by 1kb will result in the lose of audio. Always ensure your vehicles.awc is below 16,133kb when installing new sirens. All RESIDENT.rpfs included in this repo will satisify that requirement. 
### How to reduce vehicle.awc file size:
- __Use shorter siren tones__ *(shorter tones = smaller file sizes) [You can use Audacity to accomplish this]*
- __Reduce siren tone quality__ *(lowering bitrate will reduce file size but too much can result in loss of audio quality) I recommend going no lower than 22050Hz. [You can use Audacity to accomplish this]*
- __Reduce other ambient sound quality__ *(lower bitrate of unused sounds like subway doors) [You can use Audacity to accomplish this]*
- __Replace other ambient sound(s) with empty WAV files__ *(some ambient sounds are not used in FiveM replacing things like subway doors with empty WAVs can save ~125kb)*
