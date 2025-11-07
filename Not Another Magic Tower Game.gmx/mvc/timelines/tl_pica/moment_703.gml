spdspd11=0.02
at11=false
with obj_pica_cherry {
    //direction=point_direction(player.x,player.y,x,y)
    dir = point_direction(x,y,player.x,player.y)+random_range(160,200);
    for(i=0;i<3;i+=1;){
        inst = instance_create(x,y,obj_pica_cherry2);
        inst.speed = speed;
        inst.direction = dir+120*i;
        inst.coll = true;
        inst.sprite_index = sprite_index;
        inst.image_xscale = 1;
        inst.image_yscale = inst.image_xscale;
    }
    instance_destroy();
}

