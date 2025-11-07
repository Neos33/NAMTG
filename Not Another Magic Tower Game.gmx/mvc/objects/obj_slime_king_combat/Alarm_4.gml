if(status == 0)
{    
    for(var i = 0; i < 4; i+=1)
    {
        eff = instance_create(x + 16 + 64 * cos(degtorad(45 * (2 * i + 1))), y + 16 - 64 * sin(degtorad(45 * (2 * i + 1))), obj_appearEffect);
        eff.pid = i;
    }
}
else if(status == 2)
{    
    for(var i = 0; i < 3; i+=1)
    {
        eff = instance_create(x + 16 + 64 * cos(degtorad(90 + 120 * i)), y + 16 - 64 * sin(degtorad(90 + 120 * i)), obj_appearEffect);
        eff.pid = i;
    }
}
else if(status == 4)
{    
    for(var i = 0; i < 2; i+=1)
    {
        eff = instance_create(x + 16 + 96 * cos(degtorad(180 * i)), y + 16 - 96 * sin(degtorad(180 * i)), obj_appearEffect);
        eff.pid = i;
    }
}
audio_playsound(sndSummon);
alarm[5] = 30;

