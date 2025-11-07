depth=1
if(view_current != 0){exit}
draw_set_alpha(0.9);
draw_set_color(c_black)
draw_rectangle_color((room_width/2),0,(room_width/2)+(room_width/pi)/2,room_height,c_black,c_dkgray,c_dkgray,c_black,0)
draw_rectangle_color((room_width/2)-(room_width/pi)/2,0,(room_width/2),room_height,c_dkgray,c_black,c_black,c_dkgray,0)



draw_reset_color();

