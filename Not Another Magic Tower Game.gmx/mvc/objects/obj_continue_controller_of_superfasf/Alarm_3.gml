
if(direc<=3)
{
    //alarm[3]=50;
    sound_fix(snd_riioooooooo);
    with(obj_superFasf_combat)
    {
        direction=point_direction(x,y,player.x,player.y);
        speed=speed+other.direc;
    }
    direc+=1;
    //global.test += 1;
}
else
{
    with(obj_superFasf_combat)
    {
        friction=0.1;
    }
    //print("Se warpeo esta mierda? - position y: ", obj_superFasf_combat.y)
    pp = false;
    alarm[4]=150;
}

