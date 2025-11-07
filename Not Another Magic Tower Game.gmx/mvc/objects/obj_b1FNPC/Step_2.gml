if instance_exists(obj_snakeStartControl)
{
    if(!obj_snakeStartControl.on)
    {
        if(player.x > 800)
        {
            __view_set( e__VW.XView, 0, room_width - 800 );
        }
    }
}

