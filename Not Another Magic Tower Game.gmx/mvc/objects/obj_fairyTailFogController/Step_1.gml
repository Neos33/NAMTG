/*if (surface_exists(surf)){
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
/*  */
