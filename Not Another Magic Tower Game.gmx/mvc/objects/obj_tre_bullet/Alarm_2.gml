for(var i=0;i<4;i+=1){
    var a=instance_create(x,y,obj_tre_bullet2);
        a.speed=5;
        a.direction=ang+i*090;
        a.friction=0.1;
        a.sprite_index=sprite_index;
        a.image_index=image_index;
        a.no=1;
        a.count=count2;
}
count2+=1;
alarm[2]=5;

