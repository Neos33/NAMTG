with(obj_taisaBullet){
    if(image_index == RED){
        splitBullet(x,y,6-spd/5,getDirection(obj_taisaPattern)+30,spr_danmaku2,image_index,1,15);
        instance_destroy();
    }
}

