draw_set_alpha(alpha);
var per = current/total;
draw_set_color(merge_color(c_red,c_green,per));
draw_rectangle(player.x - width/2, player.y - 32, player.x - width/2 + width * per, player.y - 28, false);



draw_reset_color();
/*draw_set_color(c_silver);
draw_rectangle(player.x - width/2, player.y - 35, player.x - width/2 + width * per, player.y - 29, true);

/* */
/*  */
