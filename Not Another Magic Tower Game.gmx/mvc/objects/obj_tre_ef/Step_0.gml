if f 
{
    var fl=instance_create(0,0,obj_tre_blend);
        fl.image_alpha=1;
        fl.spd=-0.05;
        fl.alarm[1]=1;
    f=false
    
}
if fi 
{
    var fl=instance_create(0,0,obj_tre_blend);
        fl.image_alpha=1;
        fl.depth=-10000000;
        fl.spd=-0.1;
        fl.alarm[1]=1;
    fi=false

}
if f2 
{
    var fl=instance_create(0,0,obj_tre_blend);
        fl.spd=-0.5;
    f2=false
    
}
if d 
{
    var fl=instance_create(0,0,obj_tre_blend);
        fl.image_blend=c_black
        fl.spd=-0.02
    d=false
    
}
if d2 
{
    var fl=instance_create(0,0,obj_tre_blend);
        fl.image_blend=c_black
        fl.spd=-0.5
    d2=false
    
}

