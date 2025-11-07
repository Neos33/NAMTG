if(start)
{
    if(instance_exists(obj_skeletonOrc_combat) && player_is_alive())
    {
        for(var i = 0; i < 2; i += 1)
        {
            if(__view_get( e__VW.WView, i ) > 300)
            {
                __view_set( e__VW.WView, i, __view_get( e__VW.WView, i ) - (3) );
            }
            else
            {
                __view_set( e__VW.WView, i, 300 );
            }
            
            if(__view_get( e__VW.HView, i ) > 452)
            {
                __view_set( e__VW.HView, i, __view_get( e__VW.HView, i ) - (3) );
            }
            else
            {
                __view_set( e__VW.HView, i, 452 );
            }
        }
        __view_set( e__VW.XView, 0, RangeClamp(player.x - __view_get( e__VW.WView, 0 ) / 2, 0, 400 - __view_get( e__VW.WView, 0 )) );
        __view_set( e__VW.YView, 0, RangeClamp(player.y - __view_get( e__VW.HView, 0 ) / 2, 0, 608 - __view_get( e__VW.HView, 0 )) );
        __view_set( e__VW.XView, 1, RangeClamp(obj_skeletonOrc_combat.x - __view_get( e__VW.WView, 1 ) / 2, 400, 800 - __view_get( e__VW.WView, 1 )) );
        __view_set( e__VW.YView, 1, RangeClamp(obj_skeletonOrc_combat.y - __view_get( e__VW.HView, 1 ) / 2, 0, 608 - __view_get( e__VW.HView, 1 )) );
    }
    else
    {
        __view_set( e__VW.WView, 0, 400 );
        __view_set( e__VW.HView, 0, 608 );
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
        __view_set( e__VW.WView, 1, 400 );
        __view_set( e__VW.HView, 1, 608 );
        __view_set( e__VW.XView, 1, 400 );
        __view_set( e__VW.YView, 1, 0 );
    }
}

