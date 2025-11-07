vspeed = global.levelSpeed;

p1.angle = angle + 180;
p2.angle = angle;

p1.x = x + radius * cos(degtorad(p1.angle));
p1.y = y - radius * sin(degtorad(p1.angle));
p2.x = x + radius * cos(degtorad(p2.angle));
p2.y = y - radius * sin(degtorad(p2.angle));

angle += rotateSpd;

