direction+=dirspd
image_alpha+=alpspd
image_angle+=iaglspd
image_xscale+=xsclspd
image_yscale+=ysclspd

if control {
x=xx+cos(degtorad(angle))*distance
y=yy-sin(degtorad(angle))*distance
distance+=disspd
angle+=aglspd}

if pose {
speed = (point_distance(x,y,xxx,yyy))/20;
direction = point_direction(x,y,xxx,yyy);
if (speed > maxspd)speed = maxspd;}

if coll {
if !place_free(x+hspeed,y) hspeed = -hspeed;
if !place_free(x,y+vspeed) vspeed = -vspeed;}

if sh {
x+=random_range(-maxsh,maxsh)
y+=random_range(-maxsh,maxsh)}

if go {
direction=point_direction(x,y,player.x,player.y)+180;
speed+=0.01}

