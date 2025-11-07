if image_alpha<1 image_alpha+=0.05;
if(point_distance(x,y,obj_taisaPattern.x,obj_taisaPattern.y)>len+60)
{
    if(spd != 0)
    {
        var a = createBullet(x,y,0.8*spd,direction,sprite_index,BLUE);
        a.friction = -0.05;
        a = createBullet(x,y,spd,direction,sprite_index,RED);
        a.friction = -0.05;
        instance_destroy();
    }
    else
    {
        var a=createBullet(x,y,0.8*speed,direction,sprite_index,BLUE);
        a.friction = -0.05;
        a=createBullet(x,y,speed,direction,sprite_index,RED);
        a.friction = -0.05;
        instance_destroy();
    }
}
direction += dirspd;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

