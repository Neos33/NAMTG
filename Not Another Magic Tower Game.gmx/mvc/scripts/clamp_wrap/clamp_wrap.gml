/// @description clamp_wrap(val, min, max) 
/// @param val
/// @param  min
/// @param  max
var val = argument[0],
minn = argument[1],
maxx = argument[2];

if (val > maxx) val = minn; else if (val < minn) val = maxx;
    return val;
