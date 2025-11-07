if(player.x >= bbox_left && player.x <= bbox_right && player.y - 18 <= bbox_bottom)
{
    if(!onMesseging)
    {
        if(!global.special[11])
        {
            for(i = 0; i < messageLength; i+= 1) {
            message_add(myMsg[i]);
            }
            onMesseging = true;
            alarm[0] = 30;
        }
        else if(!global.clearItem[8])
        {
            b = instance_create(x,y, obj_ultimateEnergy_green);
            b.targetX = x;
            b.targetY = y - 40;
            b.visible = false;
            b.depth = 100;
            p = instance_create(x,y + 64, block);
            player.frozen = true;
            onMesseging = true;
            for(i = 0; i < messageLength; i+= 1) {
                message_add(myMsg[i]);
            }
            alarm[5] = 1;
            onMesseging = true;
        }
        else
        {
            for(i = 0; i < messageLength; i+= 1) {
            message_add(myMsg[i]);
            }
            onMesseging = true;
            alarm[0] = 30;
        }
    }
}

