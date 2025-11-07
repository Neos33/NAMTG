if(place_meeting(x,y,player))
{
    if(keyboard_check_pressed(global.downbutton) && !global.JKMapView)
    {
        global.JKMapView = true;
        player.frozen = true;
        obj_stepRecord.start = false;
        instance_create(x,y,obj_jkMapDrawer);
    }
}

