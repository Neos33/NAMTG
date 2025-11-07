if(((player.x + 6 >= bbox_left) && player.x < x && keyboard_check_direct(global.rightbutton)) || 
((player.x - 6 <= bbox_right) && (player.x > x + 16) && keyboard_check_direct(global.leftbutton)))
{
    if(!onMesseging && player.y < bbox_bottom && player.y > bbox_top)
    {
        if(!global.special[12])
        {
            event_inherited();
        }
        else if(!global.clearItem[6] && !global.clearItem[7])
        {
            for(i = 0; i < messageLength; i+= 1) {
                message_add(myMsg[i]);
            }
            onMesseging = true;
            player.frozen = true;
            alarm[11] = 1;            
        }
        else if(global.gayEndingStep < 5)
        {
            global.gayEndingStep += 1;
            alarm[3] = 1;
            event_inherited();
        }
        else
        {
            event_user(1);
            onMesseging = true;
            alarm[0] = 30;
            alarm[1] = 10;
        }
    }
}

