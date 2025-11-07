if(image_index < 3)
{
    image_index +=1;
    alarm[0] = 5;
}
else
{
    sound_fix(sndSecret);
    global.story[9] = true;
    with(obj_npc2)
    {
        myMsg[0] = "Old Gay : You are miracle!";
        messageLength = 1;
    }
    instance_destroy();
    
}

