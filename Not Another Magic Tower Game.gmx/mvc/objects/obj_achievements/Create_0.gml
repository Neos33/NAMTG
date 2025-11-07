alarm[0] = 1;
image_alpha = 0.8;
image_speed = 0;
audio_playsound(sndAchievement);
if(view_enabled[1])
{
    ty = 608 - 72;
}
else
{
    ty = __view_get( e__VW.YView, 0 ) + 608 - 72;
}

status = 0;
/*if(instance_number(obj_achievements))
{

}

/* */
/*  */
