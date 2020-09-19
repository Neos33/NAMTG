{
    //splitheart(number,speed,object,direction,image_index)
    var a,dir,angle;
    if argument3=1{
        dir = point_direction(x,y,player.x,player.y);
    }
    else if argument3=-1{
        dir = random(360);
    }
    else{
        dir = argument3;
    }
    //x = 16(sint)^3
    //y = 13cost-5*cos(2t)-2cos(3t)-cos(4*t)
    //r=17
    for(i=1;i<=argument0;i+=1){
        a=instance_create(x,y,argument2);
        angle=degtorad(360/argument0*i);
        a.sprite_index=argument4;
        a.image_index=irandom_range(argument5,argument6);
        a.speed=1/17*argument1*point_distance(x,y+1,x+16*power(sin(angle),3),y-13*cos(angle)+5*cos(2*angle)+2*cos(3*angle)+cos(4*angle));
        a.direction=dir+point_direction(x,y+1,x+16*power(sin(angle),3),y-13*cos(angle)+5*cos(2*angle)+2*cos(3*angle)+cos(4*angle))+90;
    }
}
