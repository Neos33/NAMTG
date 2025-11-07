sAng = random_range(0,360);
image_index = 1;
pCount += 1;
for(var i=0;i<8;i+=1)
{
 rotate = instance_create(x,y,obj_lightBulletRotate);
 rotate.speed=4;
 rotate.direction = sAng + i * 45;
}
alarm[1] = 18;

