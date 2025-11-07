//if(!blocked)
//{
    if(keyboard_check(global.jumpbutton))
    {
        if(angle <= 45)
        {
            angle += 2;
        }
        else
        {
            angle = 45;
        }
    }
    else
    {
        if(angle >= -45)
        {
            angle -=2;
        }
        else
        {
            angle = -45;
        }
    }
//}

image_angle = angle;
vspeed = -13 * sin(degtorad(angle));
while(place_meeting(x,y + vspeed, block))
{

        if(angle > 1)
        {
            angle -= 1;
        }
        else if(angle < -1)
        {
            angle += 1;
        }
        else
        {
            angle = 0;
        }
        image_angle = angle;
        vspeed = -13 * sin(degtorad(angle));
}

