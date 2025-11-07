draw_current();
draw_set_alpha(1);
draw_set_color(c_red);
draw_rectangle(x - hpWidth/2*image_xscale, y - (20 + hpHeight) * image_yscale,x + hpWidth/2*image_xscale, y - 20 * image_yscale, false);
draw_set_color(c_green);
draw_rectangle(x - hpWidth/2*image_xscale, y - (20 + hpHeight) * image_yscale,x - hpWidth * (1/2 - hp/fullHp)*image_xscale, y - 20 * image_yscale, false);



draw_set_color(c_white);


