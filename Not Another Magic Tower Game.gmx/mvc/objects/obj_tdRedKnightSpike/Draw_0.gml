draw_current();
draw_set_alpha(1);
hpPer = hp / fullHp;
draw_set_color(merge_color(c_red,c_green,hpPer));
draw_rectangle(x-16,y-20,x-16+32*hpPer,y-18,false);


draw_set_color(c_white);

