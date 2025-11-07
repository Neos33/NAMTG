draw_set_blend_mode(bm_add);
draw_sprite_ext(spr_gayEffect, ind, x,y,1.05,1.05,0,blend,0.8);
draw_sprite_ext(spr_gayEffect, ind, x,y,1,1,0,blend,1);
draw_current();
draw_set_blend_mode(bm_normal);

