if(phase == 1)
{
 with(obj_light4)
 {
     sgc = instance_create(x,y,obj_smallGrayCherry);
     sgc.speed = random_range(2,4);
     sgc.direction = random_range(0,360);
 }
 alarm[9] = 10;
}

