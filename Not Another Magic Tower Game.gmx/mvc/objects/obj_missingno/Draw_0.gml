if(status == 0)
{
    var sy1 = oy + 10 * sin(degtorad(angle - 15));
    var sy2 = oy + 10 * sin(degtorad(angle - 15));
    draw_sprite_ext(sprite_index,image_index,x,sy2,1.1,1.1,image_angle,c_silver,0.4);
    draw_sprite_ext(sprite_index,image_index,x,sy1,1.05,1.05,image_angle,c_silver,0.7);
    draw_current();
}
else
{
    draw_sprite_ext(sprite_index,image_index,x,y,1.1,1.1,image_angle,c_silver,0.4);
    draw_sprite_ext(sprite_index,image_index,x,y,1.05,1.05,image_angle,c_silver,0.7);
    draw_current();
}

