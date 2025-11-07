if(circleCount > 0)
{
    if(circleCount == 15)
    {
        instance_create(x - 4, y, obj_skeletonOrcSwordHit2);
    }
    if(circleCount mod 3 == 0)
    {
        sound_fix(snd_touhou_attack3);
    }
    b = instance_create(x - 4 + 80 *cos(degtorad((15 - circleCount) * 13 + 70)), y - 80 * sin(degtorad((15 - circleCount) * 13 + 70)), obj_skeletonOrcSwordBullet1);
    b.image_angle = point_direction(x - 4, y, b.x, b.y) - 90;
    b.dir = point_direction(x - 4, y, b.x, b.y);
    circleCount -= 1;
    alarm[4] = 1;
}
else
{
    with(obj_skeletonOrcSwordBullet1)
    {
        if(!start)
        {
            alarm[3] = 1;
        }
    }
    alarm[11] = 15;
}

