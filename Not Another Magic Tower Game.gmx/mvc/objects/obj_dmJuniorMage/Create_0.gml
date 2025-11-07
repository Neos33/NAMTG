event_inherited();
image_speed = 1/8;
hp = 10;
fullHp = 10;
instance_position(x,y,obj_dmAppearHole);
xl = ds_list_create();
yl = ds_list_create();
spd = 0;
hMove = true;
vMove = false;


minAngle = 0;
maxAngle = 0;

if(x > 400)
{
    minAngle = 115;
    maxAngle = 245;
}
else
{
    minAngle = -65;
    maxAngle = 65;
}
angle = maxAngle;
midAngle = (minAngle + maxAngle)/2;
angleSpd = 0;
hinit = false;
toMin = true;
time = 0;
isStable = true;


ind = 0;
size = 0;
sound = false;

