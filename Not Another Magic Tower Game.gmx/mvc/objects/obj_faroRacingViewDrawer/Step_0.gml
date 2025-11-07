if(!player_is_alive()) exit;
//shakeRate = round(hspeed);
viewX = RangeClamp(player.x - 400, 0, room_width - 800);
__view_set( e__VW.XView, 0, viewX + random_range(-shakeRate,shakeRate) );
__view_set( e__VW.YView, 0, random_range(-shakeRate,shakeRate) );

