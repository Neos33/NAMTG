if(blur)
scr_draw_motionblur(speed*amount,direction,x,y,0);
else
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

