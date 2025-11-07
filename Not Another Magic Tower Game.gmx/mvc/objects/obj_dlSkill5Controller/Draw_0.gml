if(player_is_alive()) {
    draw_surface_ext(surf,0,0,1,1,0,c_white,alpha);
}
else
{
    instance_destroy();
}

