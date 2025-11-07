draw = true;
//pauseImg = sprite_create_from_screen(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], false, false, 0, 0);
pauseImg = sprite_create_from_surface(application_surface, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), false, false, 0, 0);

instance_deactivate_all(true);
instance_activate_object(world);



