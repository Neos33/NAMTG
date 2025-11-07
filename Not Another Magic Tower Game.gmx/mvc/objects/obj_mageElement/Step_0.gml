if(start)
{
    if(obj_magelv2_combat.selectedIndex < 0)
    {
        tempAng = obj_magelv2_combat.eAngle + 72 * index;
        if(tempAng < 0)
        {
            tempAng += 360;
        }
        x = obj_magelv2_combat.x + 96 * cos(degtorad(tempAng));
        y = obj_magelv2_combat.y - 40 * sin(degtorad(tempAng));
        scale = abs(abs((obj_magelv2_combat.eAngle + 72 * index) mod 360) - 90) / 240 + 0.25;
        image_xscale = scale;
        image_yscale = scale;
        image_alpha = scale;
    }
    else
    {
            x = obj_magelv2_combat.x + 96 * cos(degtorad(obj_magelv2_combat.eAngle + 72 * index));
            y = obj_magelv2_combat.y - 40 * sin(degtorad(obj_magelv2_combat.eAngle + 72 * index));
            if(obj_magelv2_combat.selectedIndex == index)
            {
                alarm[0] = 10;
            }
            else
            {
                stepScale = image_xscale / 25;
                alarm[1] = 10;
            }
            start = false;
    }
}


