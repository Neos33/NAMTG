/*if (!surface_exists(surf)){
    surface_reset_target();
    for(j = 0; j < 9; j += 1)
    {
        val = ds_list_find_value(list,j);
        draw_surface_general(surf, 195 + 202 * (val mod 3), 1 + 202 * floor(val / 3), 202, 202, 195 + 202 * (j mod 3), 1 + 202 * floor(j / 3), 1, 1, 0, c_white,c_white,c_white,c_white,1);
    }
    draw_surface_general(surf, 0,0,192,608, 0,0,1, 1, 0, c_white,c_white,c_white,c_white,1);
    //screen_refresh();
    
}
else{
    surf = surface_create(view_wview[0], view_hview[0]);
}


/* */
if (!surface_exists(surf))
{
    surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
}


surface_set_target(surf);
for(j = 0; j < 9; j += 1)
{
    var val = ds_list_find_value(list,j);
    draw_surface_general(application_surface, 
                        195 + 202 * (val mod 3), 
                        1 + 202 * floor(val / 3), 
                        202, 202, 
                        195 + 202 * (j mod 3), 1 + 202 * floor(j / 3), 
                        1, 1, 0, c_white,c_white,c_white,c_white,1);
}

surface_reset_target();
//draw_surface_general(surf, 0,0,192,608, 0,0,1, 1, 0, c_white,c_white,c_white,c_white,1);

draw_surface(surf, 0, 0);
//screen_refresh();
    



/* */
/*  */
