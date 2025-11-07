if(listen==1)
{
    if keyboard_check_pressed(vk_anykey)
    {
        listen=0;
        key=keyboard_lastkey;
        switch(type)
        {
            case "Up":global.upbutton=key;break;
            case "Down":global.downbutton=key;break;
            case "Left":global.leftbutton=key;break;
            case "Right":global.rightbutton=key;break;
            case "Jump":global.jumpbutton=key;break;
            case "Shoot":global.shotbutton=key;break;
            case "Restart":global.restartbutton=key;break;
            case "Menu":global.menubutton=key;break;
            case "Skip":global.skipbutton=key;break;
            case "Pause":global.pausebutton=key;break;
            case "Transmission":global.transmissionbutton=key;break;
            case "UpStairs":global.upstairsbutton=key;break;
            case "DownStairs":global.downstairsbutton=key;break;
            case "CentralFlying":global.centralflyingbutton=key;break;
            case "CentralFlyingPos":global.centralflyingposbutton=key;break;
            case "Door": global.doorButton=key;break;
            case "Dynamite": global.dynamiteButton=key;break;
            case "Space": global.spaceButton=key;break;
        }
        controls_update();
        event_user(0);
    }
}

