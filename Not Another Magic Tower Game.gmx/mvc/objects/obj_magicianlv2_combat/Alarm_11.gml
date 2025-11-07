phase = 6;
x = targetX;
y = targetY;
if(targetX > 400)
{
    isRight = false;
    if(image_xscale > 0)
    {
        image_xscale *= -1;
    }
}
else
{
    isRight = true;
    if(image_xscale < 0)
    {
        image_xscale *= -1;
    }
}
audio_playsound(sndTelAtk);

