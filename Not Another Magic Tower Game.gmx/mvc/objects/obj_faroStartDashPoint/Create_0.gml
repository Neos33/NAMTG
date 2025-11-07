image_xscale = 5;
image_yscale = 5;

spd = 150;
rng = irandom_range(0,1000);
count = 5;
angle = random_range(0,360);
event_user(0);
ind = 0;
x = targetX;
y = targetY;

for(i=0;i<5;i+=1)
{
    circle = instance_create(400 + 200 * cos(degtorad(angle + 72 * i)),
                             304 - 200 * sin(degtorad(angle + 72 * i)),
                             obj_faroStartCircle1);
    circle.num = rng;
}

//innerColor = make_color_rgb(230,248,255);
//outterColor = make_color_rgb(136,195,224);

lastNode = instance_create(x,y,obj_faroStartDashNode);
//lastNode.target = self;
lastNode.num = rng;

explodePolygon2(400,304, 5,200,angle,8,2,obj_faroStartBullet3, spr_faroStartBullet, 0.3);
with(obj_faroStartBullet3)
{
    if(num == 0)
    {
        num = other.rng;
    }
}




