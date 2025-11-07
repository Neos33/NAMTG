if(place_meeting(x,y,player))
{
    if(txtAlpha < 1)
    {
        txtAlpha += 0.05;
    }
    
    if(keyboard_check_pressed(global.upbutton))
    {
        for(var i=0;i<msgLength;i+=1)
        {
            message_add(msg[i]);
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

