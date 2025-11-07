if(b.image_alpha > 0)
{
    b.image_alpha -= 0.02;
    alarm[7] = 1;
}
else
{
    global.clearItem[9] = true;
    message_add(b.msg);
    message_add("Senior Fairy : Please let peace restored once again.");
    player.frozen = false;
    with(b)
    {
        instance_destroy();
    }
    myMsg[0] = "Senior Fairy : Please let peace restored once again. ";
    messageLength = 1;
    alarm[0] = 20;
}

