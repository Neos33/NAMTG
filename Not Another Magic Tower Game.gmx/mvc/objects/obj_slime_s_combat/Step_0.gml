if(x < -4)
{
    hspeed = 3;
}
else if(x >= 776)
{
    hspeed = -3;
}
if(y > 544)
{
    vspeed = -7;
}
if(!player_is_alive() && !global.achievements[21])
{
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 21;
        global.achievements[21] = true;
}

