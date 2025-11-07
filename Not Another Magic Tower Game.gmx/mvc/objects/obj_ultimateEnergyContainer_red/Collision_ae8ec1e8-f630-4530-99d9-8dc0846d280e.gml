if(global.gemPlaced[ind])
{
    exit;
}
if(cooldown <= 0)
{
    cooldown = 25;
    if(!global.clearItem[ind + 6])
    {
        message_add("You don't have the " + string(color) + " gem.");
    }
    else
    {
        put = show_question("Put the " + string(color) + " here?");
        if(put)
        {
            alarm[0] = 1;
        }
    }
}

