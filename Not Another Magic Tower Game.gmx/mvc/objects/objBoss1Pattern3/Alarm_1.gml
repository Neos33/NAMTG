objBoss1Parent.tid=id;
with objBoss1Bullet4
{
    if par = objBoss1Parent.tid
    {
        if global.phase mod 2 == 0
        {
            speed = 5;
        }
        else{
            speed = -5;
        }
        friction = -0.05;
    }
}

alarm[1]=4*SPB;

