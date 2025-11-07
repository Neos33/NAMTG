if(rotate)
{
    image_angle += 3;
}

if(disappear)
{
    if(image_alpha > 0)
    {
        image_alpha -= 0.02;
    }
}

if(obj_faroPhase1Controller.mode == 1)
{
    blinkCenter -= 0.0005;
}

