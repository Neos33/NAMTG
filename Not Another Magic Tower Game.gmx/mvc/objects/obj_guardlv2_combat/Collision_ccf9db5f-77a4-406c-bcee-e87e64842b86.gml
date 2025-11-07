
//instance_create(x,y,obj_teleport2);
with(obj_guardlv2SpecialTrigger)instance_destroy();
instance_create(x -11.5, y + 11.5, obj_guardlv2explode); 
instance_create(0,0,view_shaker1);
//x=-32;
//y=-32;
y = 560;
hspeed = 0;
vspeed = 0;
image_angle = 0;
//visible=0;
if(i<=3)
{
    alarm[10]=50;
}
else
{
    alarm[5]=50;

}

