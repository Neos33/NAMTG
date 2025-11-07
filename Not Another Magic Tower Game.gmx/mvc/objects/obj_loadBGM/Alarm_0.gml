/// @description  Load music
//execute_string("globalvar " + name[musicIndex]);
//execute_string(name[musicIndex] + '=SS_LoadSound(working_directory+"\BGM\' + song[musicIndex] + '",'+ string(1-type[musicIndex]) +');');

ds_map_add(global.NAMTG_BGM, name[musicIndex], FMODSoundAdd(global.music_directory + song[musicIndex], 0, type[musicIndex]));
if global.NAMTG_BGM[? name[musicIndex]] == 0
{
    print("*",name[musicIndex],"*", " failed.");
}
else
{
    print("*",name[musicIndex],"*", " loaded succesfully.");
    FMODSoundSetGroup(global.NAMTG_BGM[? name[musicIndex]], group[musicIndex]);
}
event_user(0);

