//if !instance_exists(player)
//    exit;
if(((player.x + 6 >= bbox_left) && player.x < x && keyboard_check_direct(global.rightbutton)) || 
((player.x - 6 <= bbox_right) && (player.x > x + 16) && keyboard_check_direct(global.leftbutton)))
{
    if(!onMesseging && player.y < bbox_bottom && player.y > bbox_top)
    {
        if(!global.spaceTrigger && global.SpaceItems[6] && talkingTimes >= 2)
        {
            global.spaceTrigger = true;
            message_add("Fairy Igzi : Good lu...");
            message_add("Kid : Shut up! You are the one who sent me the mails right?");
            message_add("Fairy Igzi : Hey hey hey! You got it.");
            message_add("Fairy Igzi : Well, the previous 7 dumb stages are made by the game creator. Seems time to show you what is a real puzzle.");
            alarm[4] = 2;
        }
        else
        {
            talkingTimes += 1;
            if(instance_exists(obj_finalDoor))
            {
                if(!instance_exists(obj_clearDoorPrototype))
                {
                    myMsg[5] = "Fairy Igzi: I just grasped the way to control my fairy power. This really took a long time. And now, time to break the fucking block. "
                    myMsg[6] = "Kid: Do it.";
                    myMsg[7] = "Fairy Igzi: Hmmmmmmmmmmmmmmmmmmmmm...";
                    myMsg[8] = "Fairy Igzi: FAIRY BEAM!!!";
                    laserReady = true;
                    messageLength = 9;
                }
                else
                {
                    myMsg[5] = "Fairy Igzi: But seems you are not qualified yet. "
                    myMsg[6] = "Fairy Igzi: Open all devas doors below and then come back to me.";
                    messageLength = 7;
                }
            }
            for(i = 0; i < messageLength; i+= 1) {
                message_add(myMsg[i]);
            }
        }
        onMesseging = true;
        alarm[0] = 30;
        alarm[1] = 10;
    }
}

