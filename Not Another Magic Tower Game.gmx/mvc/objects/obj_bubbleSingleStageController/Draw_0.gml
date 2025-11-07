for(var i = 0; i < 3; i += 1)
{
    if(i < starNum)
    {
        draw_sprite_ext(spr_starForStas, 0, 650 + i * 40, 64, 0.3,0.3,0,c_white,1);
    }
    else
    {
        draw_sprite_ext(spr_starForStas, 1, 650 + i * 40, 64, 0.3,0.3,0,c_white,1);
    }
}

