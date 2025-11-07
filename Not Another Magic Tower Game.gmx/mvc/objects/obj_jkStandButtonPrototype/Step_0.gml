if(pressed)
{
    image_index = 1;
}
else
{
    image_index = 0;
}

if(place_meeting(x,y,player) || place_meeting(x,y,obj_jkShadow) || place_meeting(x,y,obj_followingMonster))
{
    pressed = true;
}
else
{
    pressed = false;
}

