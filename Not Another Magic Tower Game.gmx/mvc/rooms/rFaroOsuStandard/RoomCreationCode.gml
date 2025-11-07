player.x = 64 + 17;
player.y = 544 + 23;
player.frozen = true;
player.image_alpha = 0;
bow.image_alpha = 0;
obj_faro_combat.image_alpha = 0;
__background_set( e__BG.Alpha, 0, 0.6 );

cd3 = instance_create(0,0,obj_osuCountdown);
cd3.sprite_index = spr_osuCountdown3;
cd3.image_alpha = 1;
cd2 = instance_create(800,0,obj_osuCountdown);
cd2.sprite_index = spr_osuCountdown2;
cd2.image_alpha = 1;
cd1 = instance_create(400,0,obj_osuCountdown);
cd1.sprite_index = spr_osuCountdown1;
cd1.image_alpha = 1;