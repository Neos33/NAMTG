ind = 0;
image_speed = 0;
image_index = 1;
if(global.floorTrigger[ind])
{
    solid = true;
    image_index = 0;
}
else
{
    var alt = instance_create(x,y,obj_floorMark);
    alt.sprite_index = sprite_index;
    alt.image_index = 1;
    instance_destroy();
}

