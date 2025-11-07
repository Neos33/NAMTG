if(!special)
{
 rnd = random_range(0,36);
 for(var i = 0; i < 10; i += 1)
 {
  pp = instance_create(x,y,obj_smallGrayCherry);
  pp.speed = 5;
  pp.direction = rnd + 36 * i;
 }
 instance_destroy();
}
else
{
 alarm[11] = 1;
}

