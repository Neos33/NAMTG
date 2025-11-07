draw_set_blend_mode(bm_add);
draw_sprite_ext(spr_extraStarEffect,0,x,y,4,4,effAngle,c_white,1);
draw_sprite_ext(spr_extraStarEffect,0,x,y,4,4,effAngle + 45,c_white,1);
draw_sprite_ext(spr_extraStarEffect,0,x,y,4,4,effAngle + 90,c_white,1);
draw_sprite_ext(spr_extraStarEffect,0,x,y,4,4,effAngle + 135,c_white,1);
draw_set_blend_mode(bm_normal);
draw_sprite_ext(item,0,x,y,1,1,-30,c_white,1);
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0,0,800,480,false);


draw_reset_color();

