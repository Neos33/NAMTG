if(instance_exists(obj_trianglePlane))
{
    obj_trianglePlane.hspeed = 6;
    __view_set( e__VW.XView, 0, obj_trianglePlane.x - 160 );
    with(obj_groundBlack)
    {
        x = __view_get( e__VW.XView, 0 );
    }
    with(obj_faShiLiu_combat)
    {
        x = __view_get( e__VW.XView, 0 ) + 720;
    }
    with(obj_shiliuPhase2Black)
    {
        x = __view_get( e__VW.XView, 0 );
    }
}

