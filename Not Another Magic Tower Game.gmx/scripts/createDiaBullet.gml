//createDiaBullet(x,y,speed,direction,sprite,image,obj)
{
    var inst,obj;
    if(!argument6){
        obj = obj_diaDanmaku;
    }
    else{
        obj = argument6;
    }
    inst = instance_create(argument0,argument1,obj);
    inst.speed = argument2;
    inst.direction = argument3;
    inst.image_angle = argument3;
    inst.sprite_index = argument4;
    inst.image_index = argument5;
    return inst;
}
