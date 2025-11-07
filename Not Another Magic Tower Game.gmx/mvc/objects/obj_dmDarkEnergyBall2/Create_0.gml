action_inherited();
image_speed = 1/6;
image_xscale = 2;
image_yscale = 2;
speed = 5;
isStable = true;
alarm[3] = 1;

eList = ds_list_create();
eStart = random_range(0, 359);
for(var i = 0; i < 12; i += 1)
{
    ds_list_add(eList, i * 30);   
}
ds_list_shuffle(eList);
eSize = 12;
eCount = 0;

isStable = true;


// Neos TODO: Particle emitter not getting destroyed
emitter = noone;

