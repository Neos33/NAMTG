if(abs(hspeed) > 5)
{
    for(var i = 1; i < 5; i+= 1)
    {
        xoffset = -10 * i * cos(degtorad(360 - direction));
        yoffset = -10 * i * sin(degtorad(360 - direction));
        draw_sprite_ext(sprite_index, image_index, x + xoffset,y + yoffset,1,1,image_angle,c_white,1 - 0.15 * i);
    }
}
draw_sprite_ext(sprite_index, image_index, x,y,1,1,image_angle,c_white,image_alpha);

