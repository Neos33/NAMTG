if(player_is_alive()){
    
    if(view_current != 0){exit}
    draw_sprite_ext(player.sprite_index,player.image_index,tx,y,player.image_xscale,player.image_yscale,0,c_white,1)
    draw_sprite_ext(sprBow,0,tx,y,player.image_xscale,1,0,c_white,1)
    
    if(view_current != 1){exit}
    draw_sprite_ext(player.sprite_index,player.image_index,x,y,player.image_xscale,player.image_yscale,0,c_white,1)
    draw_sprite_ext(sprBow,0,x,y,player.image_xscale,1,0,c_white,1)
}

