image_angle += 12;
if(place_meeting(x,y,obj_diaBlock))
{
    instance_create(x,y+12,obj_diaExplosion);
    instance_destroy();
}

