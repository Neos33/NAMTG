for(i = 0; i < 360; i += 51.43)
{
    draw_sprite_ext(spr_geStartBlueEffect1,0,400,304,1,2,angle + i, c_white, alpha);
    draw_sprite_ext(spr_geStartBlueEffect2,0,400,304,1,2,angle + i, c_white, alpha);
}

