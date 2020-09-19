//splitBullet(x,y,speed,direction,sprite,image,number,angle,object)
{
    var inst,obj;
    if(!argument8){
        obj = obj_taisaBullet;
    }
    else{
        obj = argument8;
    }
    for(i=(argument6-1)/2;i>=0;i-=1){
        for(j=-1;j<=1;j+=2){
            inst = instance_create(argument0,argument1,obj);
            inst.speed = argument2;
            inst.direction = argument3 + argument7*i*j;
            inst.image_angle = inst.direction;
            inst.sprite_index = argument4;
            inst.image_index = argument5;
        }
    }
}
