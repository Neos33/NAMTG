/// @description Draw messages and pause game
//Only draw messages if there are some
if(is_message()) {
    /* Pause the rest of the game while messages exist.
    If you don't want that to happen, delete this -> */

    if(!sprite_exists(pauseImg)) {
        //Get an image of the screen
        pauseImg = sprite_create_from_surface(application_surface, 0, 0, 800, 608, false, false, 0, 0);
        //And stop all actions, not including this one
        if(instance_exists(obj_fairyTailFogController))
        {
            with(obj_fairyTailFogController)
            {
                surface_reset_target();
            }
        }
        instance_deactivate_all(true);
        instance_activate_object(world);
        instance_activate_object(obj_skipInfo);
        instance_activate_object(obj_dirtyDealBlack);
        instance_activate_object(obj_dirtyDealMenu);
        instance_activate_object(obj_dialogEmotes);
        if(room != ExtraJK10)
            __view_set( e__VW.YView, 1, 0 );
    }
    //Draw the pause sprite
    draw_sprite(pauseImg, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    if(drawingBlack || dialogBlack)
    {
        draw_set_color(c_black);
        draw_set_alpha(alpha);
        draw_rectangle(0,0,800,608,false);
    }
    /* End point for comment */
    if(!instance_exists(obj_skipInfo))
    {
        instance_create(__view_get( e__VW.XView, 0 ) + sprite_get_width(spr_skipInfo) / 2 + 5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - sprite_get_height(spr_skipInfo) / 2, obj_skipInfo);
    }
    message_draw();
    
} else {
    if(drawingBlack)
    {
        draw_set_color(c_black);
        draw_set_alpha(alpha);
        draw_rectangle(0,0,800,608,false);
    }
    //Clear the sprite from memory
    if(sprite_exists(pauseImg)) {
        sprite_delete(pauseImg);
    }
}

draw_reset();

/* */
/*  */
