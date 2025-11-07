if(b.image_alpha > 0)
{
    b.image_alpha -= 0.02;
    alarm[7] = 1;
}
else
{
    global.clearItem[ind + 6] = true;
    message_add(b.msg);
    global.gayEndingStep = 0;
    player.frozen = false;
    with(obj_15FGay1)
    {
        myMsg[0] = string(name) + ": You are really Cool.";    
        with(b)
        {
            instance_destroy();
        }
    }
    messageLength = 1;
    alarm[0] = 20;
}

