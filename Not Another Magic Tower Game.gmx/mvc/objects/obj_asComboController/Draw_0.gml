if(draw)
{
    draw_sprite_ext(obj_armoredSoldier_combat.sprite_index, obj_armoredSoldier_combat.image_index, targetX, targetY, 1, 1, 0, c_white, alpha);
    obj_armoredSoldier_combat.image_alpha = 1 - alpha; 
}

