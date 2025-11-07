bCount += 1;
with(obj_combatPlayerKiller)
{
    if(ind > 79 && image_alpha == 1)
    {
        image_alpha = 0;
    }
    else
    {
        image_alpha = 1;
    }
}
        with(obj_climax)
        {
            alarm[1] = 1;
        }
if(bCount < 8)
{
    alarm[3] = 10;
}
else
{
    alarm[4] = 15;   
}

