image_alpha += 0.02;
rr += rrspd;
rrspd -= 0.01;
if rr<0 instance_destroy()
draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
draw_circle_color(x,y,rr,c_white,c_white,0);
draw_set_alpha(image_alpha);
draw_set_blend_mode(bm_normal);


//draw_set_alpha(1);

