if(start)
{
    if instance_exists(obj_steel_combat)
    draw_sprite_ext(sprite_index, image_index, obj_steel_combat.x + 32 - image_xscale * 16, obj_steel_combat.y + 32 - image_yscale * 16, image_xscale, image_yscale,0,c_white,image_alpha);
    image_xscale += 0.4;
    image_yscale += 0.4;
    image_alpha -= 0.02;
}

