if place_meeting(x,y,obj_finalTreboleTg)
{
    var a=instance_create(x,y,obj_finalTreboleB2);
    a.direction=rng;
    a.image_index=choose(4,5);
    a.par=id;
    a=instance_create(x,y,obj_finalTreboleB2);
    a.direction=rng+180;
    a.image_index=choose(4,5);
    a.par=id;
    a=instance_create(x,y,obj_finalTreboleB2);
    a.direction=180-rng;
    a.image_index=choose(4,5);
    a.par=id;
    a=instance_create(x,y,obj_finalTreboleB2);
    a.direction=-rng;
    a.image_index=choose(4,5);
    a.par=id;
    alpspd=0.2;
    alarm[0] = 0;
}
alarm[0] = 1;

