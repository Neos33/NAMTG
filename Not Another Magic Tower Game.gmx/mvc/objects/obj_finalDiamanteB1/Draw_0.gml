if(st1){
    x = par.x + lengthdir_x(len,dir);
    y = par.y + lengthdir_y(len,dir);
    dir += dirspd;
    image_angle = dir+90;
}
else{
    image_angle = direction+90;
}
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

