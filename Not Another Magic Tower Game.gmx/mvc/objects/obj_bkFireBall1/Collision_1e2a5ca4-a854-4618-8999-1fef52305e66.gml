if(!water)
{
    sound_fix(sndFire1);
    if(other.y < 472)
    {
        if(other.x < 400)
        {
            var fEffect = instance_create(other.x + 32, y, obj_giantBatFire);
            fEffect.image_angle = -90;
        }
        else
        {
            var fEffect = instance_create(other.x, y, obj_giantBatFire);
            fEffect.image_angle = 90;
        }
    }
    else
    {
        var fEffect = instance_create(x, other.y, obj_giantBatFire);
    }
    water = true;
    alarm[11] = 1;
}

