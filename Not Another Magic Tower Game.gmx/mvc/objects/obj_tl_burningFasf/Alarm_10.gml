 part_emitter_burst(explosion,emit1,prt1,80);
    part_emitter_burst(explosion,emit1,prt2,80);
    part_emitter_burst(explosion,emit1,prt3,80);
    visible = 0;
repeat(4)instance_create(x,y,obj_tl_bfFireBullet);
alarm[11]=250;
instance_create(0,0,obj_firering);

