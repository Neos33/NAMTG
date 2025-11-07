image_speed = 0;
if(global.trackOn)
{
    global.trackOn = false;
    image_index = 1;
}
else
{
    global.trackOn = true;
    image_index = 0;
}
global.trackInCoolDown = true;
image_alpha = 0;
gapy = 16;
audio_playsound(sndGun);
up = true;

