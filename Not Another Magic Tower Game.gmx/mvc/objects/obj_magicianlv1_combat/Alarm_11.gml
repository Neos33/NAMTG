status = "appear";
if(targetX <= 400)
{
    x = targetX + 16;
}
else
{
    x = targetX - 16;
}
y = targetY - gap;
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

