///scrAudioGetID()
var _id = argument[0];

if ds_map_exists(global.NAMTG_BGM, _id)
{
    return global.NAMTG_BGM[? _id];
}

print(_id, " does not exists in the list. Check if its getting loaded correctly");
return noone;
