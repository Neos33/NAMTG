if(attackflag=2){
    //cc[1]=instance_create(x,y,obj_steel_enemy1)
    //cc[1].speed=16;
    //cc[1].direction=random_range(180+20,360-20)
    aa[1]=instance_create(x,y,obj_steel_enemy3)
    aa[1].hspeed=choose(2,-2)*random_range(2, 3);
    aa[1].vspeed=2
    aa[2]=instance_create(x,y,obj_steel_enemy3)
    aa[2].hspeed=choose(2,-2)*random_range(3, 4);
    aa[2].vspeed=3
    aa[3]=instance_create(x,y,obj_steel_enemy3)
    aa[3].hspeed=choose(2,-2)*random_range(4, 5);
    aa[3].vspeed=4

    attackflag=3
}

if(attackflag=1){
    /*bb[1]=instance_create(x,y,obj_steel_enemy1)
    bb[1].speed=10.5
    bb[1].direction=random_range(180+20,360-20)
    bb[2]=instance_create(x,y,obj_steel_enemy1)
    bb[2].speed=13
    bb[2].direction=random_range(180+20,360-20)*/
    
    aa[1]=instance_create(x,y,obj_steel_enemy2)
    aa[1].hspeed=choose(2,-2)*random_range(2, 3);
    aa[1].vspeed=2
    aa[2]=instance_create(x,y,obj_steel_enemy2)
    aa[2].hspeed=choose(2,-2)*random_range(3, 4);
    aa[2].vspeed=3
    aa[3]=instance_create(x,y,obj_steel_enemy2)
    aa[3].hspeed=choose(2,-2)*random_range(4, 5);
    aa[3].vspeed=4
    attackflag=2
}


if(attackflag=0){
    aa[1]=instance_create(x,y,obj_steel_enemy1)
    aa[1].hspeed=choose(2,-2)*random_range(2, 3);
    aa[1].vspeed=2
    aa[2]=instance_create(x,y,obj_steel_enemy1)
    aa[2].hspeed=choose(2,-2)*random_range(3, 4);
    aa[2].vspeed=3
    aa[3]=instance_create(x,y,obj_steel_enemy1)
    aa[3].hspeed=choose(2,-2)*random_range(4, 5);
    aa[3].vspeed=4
    attackflag=1
}
//if(attackflag=2&&instance_number(obj_steel_enemy1)==0)
//{
//gravity=0.1;

//}
alarm[7]=25

/* */
/*  */
