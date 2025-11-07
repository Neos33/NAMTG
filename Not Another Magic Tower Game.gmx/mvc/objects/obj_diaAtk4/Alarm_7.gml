var a=instance_create(x-hspeed,y-vspeed,obj_diaShadowB);    
a.hspeed=hspeed;
a.vspeed=vspeed;
a.go=1;
a.image_alpha=0.5;
a.wrap=1;
a.depth=depth+1;
if(instance_number(obj_diaShadowB)<5)
{
    alarm[7]=50;
}

