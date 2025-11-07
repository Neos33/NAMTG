if(blackalpha > 0)
{
    blackalpha -= 0.02;
    alarm[3] = 1;
}
else
{
    obj_stepRecord.start = true;
    player.frozen = false;
    global.JKMapView = false;
    instance_destroy();
}

