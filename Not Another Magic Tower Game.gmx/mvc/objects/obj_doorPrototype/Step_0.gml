if(collision_rectangle(x-1,y-1,x+33,y+35, player, true, true) && !isOpen)
{
    
    if(keyboard_check_pressed(global.doorButton) && (collision_rectangle(x-1,y+1,x+33,y+35, player, true, true) || keyboard_check(global.downbutton)))
    {
        isOpen = true;
        if(type == 0 && global.yellowKeyNum > 0)
        {   
            global.yellowKeyNum -= 1;
            global.yellowDoors[ind] = true;
            alarm[0] = 1;
        }
        else if(type == 1 && global.blueKeyNum > 0)
        {   
            global.blueKeyNum -= 1;
            global.blueDoors[ind] = true;
            alarm[0] = 1;
        }
        else if(type == 2 && global.redKeyNum > 0)
        {   
            global.redKeyNum -= 1;
            global.redDoors[ind] = true;
            alarm[0] = 1;
        }
        else if(type == 3 && global.greenKeyNum > 0)
        {   
            global.greenKeyNum -= 1;
            global.greenDoors[ind] = true;
            alarm[0] = 1;
        }
        else if(type == 4 && global.ironKeyNum > 0)
        {   
            global.ironKeyNum -= 1;
            global.ironDoors[ind] = true;
            alarm[0] = 1;
        }
    }
}

