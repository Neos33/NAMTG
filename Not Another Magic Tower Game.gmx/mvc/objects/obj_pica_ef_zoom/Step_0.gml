t+=1;
if(view_hspeed2!=0 || view_vspeed2!=0)
{
    xview+=view_hspeed2
    yview+=view_vspeed2
    __view_set( e__VW.XView, 0, ceil(xview) )
    __view_set( e__VW.YView, 0, ceil(yview) )
}

if(view_hstretchspeed!=0 || view_vstretchspeed!=0)
{
    wview+=view_hstretchspeed
    hview+=view_vstretchspeed
    __view_set( e__VW.WView, 0, ceil(wview) )
    __view_set( e__VW.HView, 0, ceil(hview) )
}
if t=120
{
    spd*=-1
    view_hstretchspeed=spd
    view_vstretchspeed=spd*aspect_ratio
    view_hspeed2=-spd/2
    view_vspeed2=-spd*aspect_ratio
}
if t=240
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    __view_set( e__VW.WView, 0, 800 );
    __view_set( e__VW.HView, 0, 608 );
    obj_pica_attack.view_kill = false;
    instance_destroy();
}



