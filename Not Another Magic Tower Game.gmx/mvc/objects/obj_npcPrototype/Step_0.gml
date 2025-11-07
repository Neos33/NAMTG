if instance_exists(player)
{
    if(((player.x + 9 >= bbox_left) && player.x < x && keyboard_check_direct(global.rightbutton)) || 
    ((player.x - 9 <= bbox_right) && (player.x > x + 16) && keyboard_check_direct(global.leftbutton)))
    {
        if(!onMesseging && player.y < bbox_bottom  && player.y > bbox_top)
        {
            //global.sprIndex = 0;
            for(i = 0; i < messageLength; i+= 1) {
                message_add(myMsg[i]);
            }
            onMesseging = true;
            alarm[0] = 30;
            alarm[1] = 10;
        }
    }
}

