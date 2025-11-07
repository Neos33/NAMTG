centerX = 400;
centerY = 304;
dCount = 0;
phase = "magic";
num = choose(5,7,9);
if(num == 9)
{
    isAch = true;
}
angle = 360 / num;
fAngle = -angle;
x = centerX + 150 * cos(degtorad(fAngle)) - 16;
y = centerY - 150 * sin(degtorad(fAngle)) - 16;
fAngle += 2 * angle;
mCount = 1;
mTime = 0;
targetX = centerX + 150 * cos(degtorad(fAngle)) - 16;
targetY = centerY - 150 * sin(degtorad(fAngle)) - 16;
spd = 24;

