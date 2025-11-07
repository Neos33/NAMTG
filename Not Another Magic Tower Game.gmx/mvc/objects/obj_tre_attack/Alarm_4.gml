for(var i=0;i<2;i+=1){
    xxx[i] = 400+lengthdir_x(350,dir4+180*i);
    yyy[i] = 80+lengthdir_y(20,dir4+180*i);
}
dir4 += 12;
for(var i=0;i<2;i+=1){
    var inst = instance_create(xxx[i],yyy[i],obj_tre_shadow);
        inst.sprite_index = sprite_index;
        inst.image_xscale = image_xscale;
        inst.image_yscale = image_yscale;
        inst.image_index = 14;
        inst.image_speed = image_speed;
        inst.image_angle = image_angle;
        inst.image_blend = image_blend;
        inst.depth = depth+1;
        inst.alpha_speed=0.1;
    for(var j=0;j<n4;j+=1){
        var a=instance_create(xxx[i],yyy[i],obj_tre_bullet3);
            a.speed=6;
            a.direction=dir4+360/n4*j+60;
            a.image_index=14+irandom(4);
    }
}
alarm[4]=5;

