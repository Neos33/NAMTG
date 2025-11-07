event_inherited();
name = "The Tower Lead";
if(room == rDemonLead)
{
    x = 400;
    y = 128;
}
hp = 6666;
image_speed = 1/8;
circle = instance_create(x,y,obj_tlMagicCircle);
circle.target = id;

final = 0;
start = 0;
ox = 0;
oy = 0;
dep = 0;
dead = 0;
s = 0;

finalStart = 0;
timer = 0;
shake = 0;
per = 0;


