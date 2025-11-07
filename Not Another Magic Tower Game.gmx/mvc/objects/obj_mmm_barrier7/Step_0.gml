vspeed = global.levelSpeed;
steps = 30 - floor(global.levelSpeed);
acc = bounceGap * 2 / sqr(steps);
bounceSpd = acc * steps;

d1.y = y;
d2.y = y;

for(var i = 0; i < 4; i += 1)
{
    p[i].y = y + (floor(i / 2) - 0.5) * gap;
    p1[i].y = y + (floor(i / 2) - 0.5) * gap;
    p1[i].x = d1.x + ((i mod 2) - 0.5) * gap;
    p2[i].y = y + (floor(i / 2) - 0.5) * gap;
    p2[i].x = d2.x + ((i mod 2) - 0.5) * gap;
}

