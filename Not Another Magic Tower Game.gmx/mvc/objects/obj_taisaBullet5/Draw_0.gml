if(add)
{
    draw_set_blend_mode(bm_add);
}
if(speed == 0)
{
    var a = createBullet(x,y,0.05,direction,sprite_index,RED);
    a.friction = -0.05;
    a.dirspd = 5;
    a.alarm[0] = 15;
    a.maxspd = 3;
    a = createBullet(x,y,0.05,direction,sprite_index,BLUE);
    a.friction = -0.05;
    a.dirspd = -5;
    a.alarm[0] = 15;
    a.maxspd = 3;
    instance_destroy();
}
image_angle = direction;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

