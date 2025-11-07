if(!stop)
{
    angle += 2;
}
else 
{
    modAngle = angle mod 180;
    if(modAngle != 0)
    {
        angle += 2;
    }
    else
    {
        instance_destroy();
    }
}
//obj_silverEvilSlime_combat.x = ox + 32 * cos(degtorad(angle));
obj_silverEvilSlime_combat.y = oy - 32 * sin(degtorad(angle));

