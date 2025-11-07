if(b.image_alpha > 0)
{
    b.image_alpha -= 0.02;
    alarm[7] = 1;
}
else
{
    global.clearItem[8] = true;
    message_add("You've obtained the green energy crystal piece.");
    player.frozen = false;
    with(b)
    {
        instance_destroy();
    }
    with(p)
    {
        instance_destroy();
    }
    myMsg[0] = "Thief II : Hmm....";
    messageLength = 1;
    alarm[0] = 20;
}

