if(radius > minRadius && spd > 0)
{
    radius -= spd;
    spd -= acc;
    sAngle = obj_galleryStyleDrawer.sAngle;
}
else
{
    instance_destroy();
}

