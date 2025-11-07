if(setS < 0){
   if(setMin > 0){
   setS += 60;
   setMin -= 1;
   }else{
      if(setH > 0){
         setS += 60;
         setMin += 59;
         setH -= 1;
      }else{
         if(ros == 0){
            if(global.grav=0){
                with(player){killPlayer();}
                }else{
                with(player2){killPlayer();}
                }
            with(timelimitobject){
            instance_destroy();
            }
         }
         if(ros == 1){
            instance_create(x,y,shake);
            instance_destroy();
         }
         if(ros == 2){
            instance_destroy();
         }
         if(ros >= 3){
            room_goto(ros);
            
            if (warpX!=0 || warpY!=0) {
                if (!player_is_alive()) {
                instance_create(warpX, warpY, player);
                }
                player.x = warpX;
                player.y = warpY;
            } else {
                with (player) {
                instance_destroy();
                }
            }
        }
      }
   }
}


