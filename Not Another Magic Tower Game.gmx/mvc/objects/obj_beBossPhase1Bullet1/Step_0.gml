if(obj_bePhase1.bounce)
{
    if(abs(y - obj_bePhase1.y) >= (obj_bePhase1.controlHeight + 8))
    {
        if(y > obj_bePhase1.y)
        {
            if(vspeed > 0 && place_meeting(x,y,obj_controlBottom))
            {
                direction *= -1;
                cSpd = -3 - obj_bePhase1.vspeed;
                if(vspeed > cSpd)
                {
                    vspeed = cSpd;
                }
            }
        }
        else
        {
            if(vspeed < 0  && place_meeting(x,y,obj_controlTop))
            {
                direction *= -1;
                cSpd = 3 - obj_bePhase1.vspeed;
                if(vspeed < cSpd)
                {
                    vspeed = cSpd;
                }
            }
        }
    }
}

image_angle = direction - 80;

