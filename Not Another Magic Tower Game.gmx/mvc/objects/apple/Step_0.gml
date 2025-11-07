speed+=sp
direction+=dirspd
image_alpha+=alpspd
image_angle+=iaglspd
image_xscale+=xsclspd
image_yscale+=ysclspd
if app fade_in(amount);
if control {              //spinning,etc
x=xx+distance*(cos(degtorad(angle)))
y=yy-distance*(sin(degtorad(angle)))
distance+=disspd
angle+=aglspd}

if pos {           //move towards point (xxx,yyy)
speed = (point_distance(x,y,xxx,yyy))/20;
direction = point_direction(x,y,xxx,yyy);
if (speed > maxspd)speed = maxspd;}

if coll {         //collide
if !place_free(x+hspeed,y) hspeed = -hspeed;
if !place_free(x,y+vspeed) vspeed = -vspeed;}

if des {mask_index=temp                     //destroy
if image_alpha>1 and !done {image_alpha=1;done=true}
alpspd-=0.01
t+=1
if t=50 instance_destroy()}

if flicker{
if image_alpha>0.8 alpspd-=0.02;
if image_alpha<0.7 alpspd+=0.02;
}

