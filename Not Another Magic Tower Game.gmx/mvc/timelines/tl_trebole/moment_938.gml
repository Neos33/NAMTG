with(obj_tre_bullet3){
    dirspd = 0;
    alarm[4] = 1;
    xxx = x;
    yyy = y;
}
with(obj_tre_bullet){
    for(i=0;i<24;i+=1){
        a = instance_create(x,y,obj_tre_bullet3);
        a.speed = 9;
        a.direction = 360/24*i;
        a.image_index = image_index;
        a.fade_o_change = 1;
    }
    instance_destroy()
}
alarm[5]=0;

