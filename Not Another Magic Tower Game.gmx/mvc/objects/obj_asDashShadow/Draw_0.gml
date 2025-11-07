for(var i = 10; i > 0; i -= 1)
{
    var tx = x + 10 * i * cos(degtorad(direction + 180));   
    var ty = y - 10 * i * sin(degtorad(direction + 180)); 
    draw_sprite_ext(sprite_index, image_index, tx,ty,1,1,image_angle,c_white,1-0.08*i);
}
draw_current();

