if(draw)
{
    if(sx > 0)
    {
        sx -= 25;
        sy -= 19;
    }
    else
    {
        sx = 0;
        sy = 0;
        drawTxt = true;
    }
}
else
{
    sx = 400;
    sy = 304;
}

if(drawTxt)
{
    if(txtAlpha < 1)
    {
        txtAlpha += 0.04;
    }
    else
    {
        txtAlpha = 1;
    }
}
else
{
    txtAlpha = 0;
}

