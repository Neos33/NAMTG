rnd6 = irandom(24);
dir6 = point_direction(x,y,player.x,player.y);
for(var i=0;i<24;i+=1){
    var a=instance_create(x,y,obj_tre_bullet);
        a.speed=9;
        a.friction=-0.1;
        a.direction=dir6+15*i;
        a.image_index=7;
}
obj_tre_cam.pat = 2;
obj_tre_cam.pat_t2 = 5;

