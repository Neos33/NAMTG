vspeed = global.levelSpeed;

angle += angleSpd;
for(i = 0; i < 3 + 2 * level; i+=1)
{
    p1[i].x = x - 180 + 80 * cos(degtorad(i * (90 + level * 50) / (3 + 2 * level - 1) + angle));
    p1[i].y = y + (i - (3 + 2 * level - 1) / 2) * radius / (3 + 2 * level - 1);
    p2[i].x = x + 180 - 80 * cos(degtorad(i * (90 + level * 50) / (3 + 2 * level - 1) + angle));
    p2[i].y = y + (i - (3 + 2 * level - 1) / 2) * radius / (3 + 2 * level - 1);
}

