repeat(floor(3 + (fhp - hp) * 0.4))
{
  instance_create(random_range(32,768),32,obj_4B6BlueApple);
}
if(hp == 0)
{
    alarm[2] = 150;
}

