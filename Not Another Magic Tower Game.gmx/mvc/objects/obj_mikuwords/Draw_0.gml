if(!kickaway)
{
 draw_sprite_part(sprite_index, image_index, 0,0,RangeClamp(p,0,100),18,x-p,y);
}
else
{
 draw_sprite_ext(sprite_index, image_index, sx + random_range(-3,3), sy + random_range(-3,3), 1,1,random_range(-5,5),c_white,image_alpha);
}

