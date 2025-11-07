target = noone;
if(instance_exists(obj_playerTouhou))
{
    target = obj_playerTouhou;
}
else if(instance_exists(obj_finalPlane))
{
    target = obj_finalPlane;
}
image_xscale = 0.5;
image_yscale = 0.5;


frozen = false;
set = false;
done = false;

