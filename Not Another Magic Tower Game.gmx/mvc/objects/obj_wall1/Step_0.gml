if(collision_rectangle(x-3,y-3,x+35,y+35, player, true, true) && !isOpen)
{
    if(keyboard_check_pressed(global.doorButton))
    {
        isOpen = true;
        alarm[0] = 1;
        if(!global.achievements[6])
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 6;
            global.achievements[6] = 1;
        }
    }
}

if(global.special[3])
{
    image_alpha = 0.5;
}

