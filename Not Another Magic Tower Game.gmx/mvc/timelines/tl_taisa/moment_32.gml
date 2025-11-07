with(obj_taisaBullet){
    if(image_index == GREEN){
        sprite_index = spr_danmaku2;
        friction = -(11-spd)/100;
        speed = -friction;
        setScale(id,1);
        noDes = 0;
        direction = getDirection(obj_taisaPattern)+210;
    }
}

