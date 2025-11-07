with(other)
{
    if(!closed)
    {
        closed = true;
        start = false;
        image_alpha = 0;
        sound_fix(sndMMMDoor);
        instance_create(0,0,obj_faroMMMWhite);
    }
}

