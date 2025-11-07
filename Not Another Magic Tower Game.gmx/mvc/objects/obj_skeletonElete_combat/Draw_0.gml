if(!transfer)
{
    draw_current();
}
else
{
    if(!appear)
    {
        if(time < 49)
        {
            height = 32 * (1 - 0.02 * time);
            draw_sprite_part_ext(sprite_index,image_index,0,0,32, height,x - 16 * sign(image_xscale),y,image_xscale,image_yscale,c_white,1);
            if(time mod 5 == 0)
            {
                if(height > 24)
                {
                    height = 24;
                }
                p1 = instance_create(x - 4, y + height, obj_eleteBone);
                p1.image_xscale = 0.8;
                p1.image_yscale = 0.8;
                //p2 = instance_create(x, y + height, obj_eleteBone);
                //p2.image_xscale = 0.8;
                //p2.image_yscale = 0.8;
                p3 = instance_create(x + 4, y + height, obj_eleteBone);
                p3.image_xscale = 0.8;
                p3.image_yscale = 0.8;
            }
            time += 1;
            if(time == 49)
            {
                transfer = false;
                alarm[5] = 300;
                x = -64; 
                transfer = false;
                obj_skeletonHead.speed = random_range(5,7);
                obj_skeletonHead.direction = random_range(20, 160);
                obj_skeletonSword.status = 3;
                obj_skeletonSword.shoot = false;
            }
        }
    }
    else
    {
        if(time < 100)
        {
            height = 32 * 0.01 * time;
            draw_sprite_part_ext(sprite_index,image_index,0,0,32, height,x - 16 * sign(image_xscale),y,image_xscale,image_yscale,c_white,1);
            time += 1;
            if(time == 100)
            {
                transfer = false;
                with(obj_skeletonHead)
                {
                    instance_destroy();
                }
            }
        }
    }
}

