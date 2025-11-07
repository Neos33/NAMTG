
if(phase == 0)
{
    draw_sprite_part_ext(sprite_index, 1, width - sw, 0, sw, height, x + width - sw, y, 1, 1, c_white, 1);
}
else if(phase == 1)
{
    draw_set_color(c_silver);
    draw_set_font(fontBasicInfo);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_alpha(1);
    draw_text(75, 32, string_hash_to_newline("The Tower Lead"));
    draw_sprite(sprite_index,0,x,y);
    if instance_exists(obj_demonLead_combat)
    {
        sw = obj_demonLead_combat.hp/6666*width;
    }
    draw_sprite_part_ext(sprite_index, 1, 0, 0, sw, height, x, y, 1, 1, c_white, 1);
    
    draw_reset();
}
else if(phase == 2)
{
    draw_sprite_part_ext(sprite_index,0,sw,0,width-sw*2,height,x,y,1,1,c_white,1);
}



