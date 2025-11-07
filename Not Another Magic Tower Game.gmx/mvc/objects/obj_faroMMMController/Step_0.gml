angle += rspd;
for(i = 0; i < 4; i += 1)
{
    p1[i].x = centerX1 + lengthdir_x(r, i * 120 + angle);
    p1[i].y = centerY1 + lengthdir_y(r, i * 120 + angle);
    p2[i].x = centerX2 + lengthdir_x(r, 180 - i * 120 - angle);
    p2[i].y = centerY2 + lengthdir_y(r, 180 - i * 120 - angle);
}

