//create star
obj_startElementController.alarm[11] = 1;
repeat(30)
{
    instance_create(x,y,obj_geStar);
}
instance_create(x,y,obj_startBGDrawer);

