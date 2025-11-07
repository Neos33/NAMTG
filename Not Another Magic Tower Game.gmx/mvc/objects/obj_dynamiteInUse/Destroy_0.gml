if(global.dynamiteTutorial)
{
    if(!cancelled)
    {
        global.dynamiteNum -= 1;
    }
    player.frozen = false;
}
else
{
    global.dynamiteTutorial = true;
}

