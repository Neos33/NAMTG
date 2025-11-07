if(pCount == 2)
{
    h3.alarm[1] = 1;
    h3.alarm[0] = 0;
}
else if(pCount == 1)
{
    h4.alarm[1] = 1;
    h4.alarm[0] = 0;
}
else
{
    with(h5)
    {
        explodePolygon2(x, y, 5, 500, 90, 8, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8);
        explodePolygon2(x, y, 5, 500, 270, 8, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8);
        instance_destroy();
    }
}
pCount -= 1;
if(pCount > 0)
{
    alarm[8] = 20;
}
else if(pCount == 0)
{
    alarm[8] = 40;
    alarm[9] = 30;
}

