//if !instance_exists(player)
  //  exit;
if(player.frozen) exit;
if(((player.x + 6 >= bbox_left) && player.x < x && keyboard_check_direct(global.rightbutton)) || 
((player.x - 6 <= bbox_right) && (player.x > x + 16) && keyboard_check_direct(global.leftbutton)))
{
    if(!onMesseging && player.y < bbox_bottom && player.y > bbox_top)
    {
        message_add("Gay DW(Merchant): Wanna a deal?");
        message_add("Kid : What's the deal?");
        message_add("Gay DW(Merchant): Well, there're kinds of here. Just choose the one you are interested in.")
        onMesseging = true;
        alarm[0] = 30;
        obj_messageController.alarm[3] = 1;
    }
}

