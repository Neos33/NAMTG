convex = choose(0,1);
if(convex)
{
    if(randomNum < 5)
    {
        ammount = 5;
    }
    else
    {
        ammount = 4;
    }
}
else
{
    ammount = 7;
}
sound_fix(snd_touhou_attack4);
if(randomNum > 4)
{
    if(convex > 0)
    {
        explodePolygon(400,304, randomNum,250,random_range(1,360),ammount,50,obj_explodeBullet, spr_touhouBullet4, 0.2, true);
    }
    else
    {
        explodePolygon2(400,304, randomNum,250,random_range(1,360),ammount,50,obj_explodeBullet, spr_touhouBullet4, 0.2);
    }
}
else
{
    explodePolygon(400,304, randomNum,250,random_range(1,360),ammount,50,obj_explodeBullet, spr_touhouBullet4, 0.2, true);
}
if(breakTotal > 0)
{
    alarm[7] = 10;
}
else
{
    x = -32;
    y = -32;
    status = 5;
}

