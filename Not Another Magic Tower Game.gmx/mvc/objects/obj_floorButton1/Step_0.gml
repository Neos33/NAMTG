if(place_meeting(x,y-1,player) && image_index==0)
{
    player.vspeed=-3;
    solid=0;
    image_index=1
    global.floorTrigger[ind]=1;
    audio_playsound(sndSwitch)
}

