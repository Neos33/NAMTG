for(var j = count; j >= 0; j-=1)
{
    draw_sprite_ext(sprite_index,image_index,record_x[j],record_y[j],1-j*0.1,1-j*0.1,image_angle,c_white,1-j*0.12);
}
draw_current();

