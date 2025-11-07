if(!trigger)
{
    trigger = true;
    /*instance_create(0,0,obj_finalCorridorWhite);
    player.frozen= true;*/
    //transition_kind = 105;
    //transition_steps = 100;
    sound_play(sndMMMDoor);
    
    player.x = 416 + 17;
    player.y = 544 + 23;
    room_goto(rFinalBoss);
    //player.x = 64 + 17;
    //player.y = 544 + 23;
    //room_goto(rFinalPuzzle1);
}

/* */
/*  */
