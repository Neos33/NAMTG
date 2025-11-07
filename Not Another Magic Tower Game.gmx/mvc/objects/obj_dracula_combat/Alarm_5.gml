if(meteorShot == 2)
{
    sound_play(sndFire2);
    instance_create(x + sign(player.x - x) * 10, y - 20, obj_draculaMeteorAppear);
    meteorShot-=1;
    alarm[5] =35;
}
else if(meteorShot == 1)
{
    meteorShot -= 1;
    instance_create(x + sign(player.x - x) * 10, y + 20, obj_draculaMeteorAppear);
    alarm[5] =35;
}
else
{
    alarm[11] = 50;
}

