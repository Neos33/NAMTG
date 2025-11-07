if(destroy) exit;
if(place_meeting(x,y,player))
{
    if(txtAlpha < 1)
    {
        txtAlpha += 0.05;
    }
    if(keyboard_check_pressed(global.upbutton))
    {
        for(i=0;i<msgLen;i+=1)
        {
            message_add(msg[i]);
        }
        if(emote)
        {
            basicX = 24;
            basicY = 504;
            with(instance_create(basicX + emoteX + 16,basicY + emoteY + 16, emoteObj))
            {
                pos = other.emotePos;
            }
        }
        if(explode)
        {
            destroy = true;
            alarm[10] = 3;
            alarm[11] = 100;
        }
    }
}
else
{
    if(txtAlpha > 0)
    {
        txtAlpha -= 0.05;
    }
}

