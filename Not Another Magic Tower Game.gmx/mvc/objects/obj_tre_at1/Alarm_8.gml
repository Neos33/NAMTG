for(i=0;i<n8;i+=1){
    var a = instance_create(x,y,obj_tre_bullet3);
        a.speed = 10;
        a.num = c8;
        a.alarm[0] = 10;
        a.direction = rn8+360/n8*i+360/n8/4*c8;
        a.image_index = rni8+6*c8;
        a.at=1;
}
c8+=1;
if(c8<4)alarm[8]=fpb/2;

