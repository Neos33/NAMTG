if ( pauseon == true ) 
{ 
    draw_background(pauseback,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )); 
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,0);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_blend_mode(bm_normal);
    draw_sprite(sprPause,0,__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+304)
}


