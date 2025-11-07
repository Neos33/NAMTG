if(!initialized)
{
    surface_set_target(test1);
    draw_set_color(c_black);
    draw_set_font(font24);
    draw_text(100,100, string_hash_to_newline("cao cao cao"));
    draw_text(200,200, string_hash_to_newline("caooooooooooo"));
    draw_sprite(spr_startGame,0,100,300);
    surface_reset_target();
    draw_set_color(c_white);
    initialized = true;
}
else
{
    draw_surface(test1, 100, 100);
}

