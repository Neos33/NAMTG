if(image_xscale < targetScale)
{
    image_xscale += 0.02;
    image_yscale += 0.02;
}
else if(targetScale == maxScale && !start)
{
    start = true;
    alarm[3] = 50;
}

var randomR = random_range(32,48);
var randomDir = random_range(30,150);
var energy = instance_create(px + lengthdir_x(randomR,randomDir), py + lengthdir_y(randomR, randomDir), obj_bsEnergyEffect);
energy.parentX = px;
energy.parentY = py;

