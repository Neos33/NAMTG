speed -= 0.15;
if(speed<0.15 && !done)
{
    done = 1;
    alarm[0] = 1;
}
if(point_distance(x,y,obj_taisaPattern.x,obj_taisaPattern.y) > 168)
{
    repeat(3)
    {
        createBullet(x,y,random_range(3,5),random(360),spr_danmaku9,image_index);
    }
    instance_destroy();
}
direction += dirspd;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

