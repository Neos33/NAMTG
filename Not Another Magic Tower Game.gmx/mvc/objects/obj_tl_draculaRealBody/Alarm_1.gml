//claw disappear
if(tranAlpha > 0)
{
    tranAlpha -= 0.02;
    claw.image_alpha = tranAlpha;
    if(clawType == 0)
    {
        left.image_alpha = 1 - tranAlpha;
    }
    else
    {
        right.image_alpha = 1 - tranAlpha;
    }
    alarm[1] = 1;
}
else
{
    alarm[10] = 50;
}

