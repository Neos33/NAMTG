if(sprInd < sprCount)
{
    //image_xscale += 0.05;
    //image_yscale += 0.05;
    sprite_index = spr[sprInd];
    sprInd += 1;
    alarm[0] = 5;
}
else
{
    start = true;
    sound_fix(sndFire1);
    h = instance_create(x-16-leftP * 32, y-16, obj_tlDWBombDmg);
    h.image_xscale = leftP + rightP + 1;
    v = instance_create(x-16, y-16-upP * 32, obj_tlDWBombDmg);
    v.image_yscale = upP + downP + 1;
    alarm[1] = 30;
    alarm[2] = 30;
}

