if(obj_osuController.mode == 0)
{
    if(obj_osuController.combo > 0)
    {
        if(obj_osuController.combo < 10)
        {
            draw_sprite_ext(sprite_index, obj_osuController.combo, centerX + w * scale / 2, centerY, scale, scale, 0, c_white, alpha);
            draw_sprite_ext(sprite_index, 10, centerX - w * scale / 2, centerY, scale, scale, 0, c_white, alpha);
        }
        else
        {
            draw_sprite_ext(sprite_index, obj_osuController.combo mod 10, centerX + w * scale, centerY, scale, scale, 0, c_white, alpha);
            draw_sprite_ext(sprite_index, floor(obj_osuController.combo / 10), centerX, centerY, scale, scale, 0, c_white, alpha);
            draw_sprite_ext(sprite_index, 10, centerX - w * scale, centerY, scale, scale, 0, c_white, alpha);
        }
    }
}
else if(obj_osuController.mode == 2)
{
    centerX = obj_osuCTBCatcher.x;
    centerY = 304;
    if(obj_osuController.combo > 0)
    {
        if(obj_osuController.combo < 10)
        {
            draw_sprite_ext(sprite_index, obj_osuController.combo, centerX, centerY, scale, scale, 0, c_white, alpha);
        }
        else if(obj_osuController.combo < 100)
        {
            draw_sprite_ext(sprite_index, obj_osuController.combo mod 10, centerX + w * scale / 2, centerY, scale, scale, 0, c_white, alpha);
            draw_sprite_ext(sprite_index, floor(obj_osuController.combo / 10), centerX - w * scale / 2, centerY, scale, scale, 0, c_white, alpha);
        }
        else
        {
            draw_sprite_ext(sprite_index, obj_osuController.combo mod 10, centerX + w * scale, centerY, scale, scale, 0, c_white, alpha);
            draw_sprite_ext(sprite_index, floor((obj_osuController.combo mod 100) / 10), centerX, centerY, scale, scale, 0, c_white, alpha);
            draw_sprite_ext(sprite_index, 1, centerX - + w * scale, centerY, scale, scale, 0, c_white, alpha);
        }
    }
}

