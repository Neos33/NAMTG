if(final)
{
    if(tControl mod 2 == 0)
    {
        var a1 = instance_create(x,y,obj_vsFinalBullet);
        a1.sprite_index = spr_touhoubullet7;
        a1.speed = random_range(5,7);
        a1.direction = random_range(0,359);    
        if(time <= 150)
        {
            var b1 = instance_create(x,y,obj_vsFinalBullet);
            b1.sprite_index = spr_mageDarkBullet;
            b1.speed = random_range(5,7);
            b1.direction = random_range(0,359);
            b1.image_angle = b1.direction - 90;
        }
        if(time <= 0)
        {
            fury = true;
            obj_vsDarkHole.fury = true;
            var c1 = instance_create(x,y,obj_vsFinalBullet);
            c1.sprite_index = spr_touhoubullet8;
            c1.speed = random_range(5,7);
            c1.direction = random_range(0,359);
            c1.image_angle = random_range(0,359);
            c1.image_xscale = 0.4;
            c1.image_yscale = 0.4;
        }
        audio_playsound(sndShoot);
        time -= 1;
    }
    tControl += 1;
}

