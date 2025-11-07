if(!instance_exists(obj_tl_blankDevilMagician))
{
    instance_destroy();
}
colorStep += 1;
var startInd = floor((colorStep mod 150) / 50);
var ammount = colorStep mod 50;
if(startInd < 2)
{
    col = merge_color(color[startInd], color[startInd + 1], ammount * 0.02);
}
else
{
    col = merge_color(color[startInd], color[0], ammount * 0.02);
}

widthAngle += 5;
width = oWidth + 10 * sin(degtorad(widthAngle));

if(targetAngle > 0)
{
    targetAngle -= 0.5;
    angle += 0.5 * angleDir;
}
else
{
    event_user(0);
}

