alphaGap = targetAlpha - 1;
scaleGap = targetScale - 1.2;
xgap = targetX - startX;
ygap = targetY - startY;

if(abs(targetX - x) > abs(xgap / 50) || abs(targetY - y) > abs(ygap / 50))
{
    image_xscale += scaleGap / 50;
    image_yscale += scaleGap / 50;
    image_alpha += alphaGap / 50;
    x += xgap / 50;
    y += ygap / 50;
    alarm[10] = 1;
}
else
{
    x = targetX;
    y = targetY;
    image_xscale = targetScale;
    image_yscale = targetScale;
    image_alpha = targetAlpha;
    start = true;
}

