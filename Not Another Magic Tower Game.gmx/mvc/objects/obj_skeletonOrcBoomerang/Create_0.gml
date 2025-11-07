action_inherited();
image_speed = 1/3;
dis = point_distance(x,y,player.x,player.y);
t = 50;
direction = point_direction(x,y,player.x,player.y);
a = dis * 2 / sqr(t);
speed = a*t;
isStable = true;


boom = false;

