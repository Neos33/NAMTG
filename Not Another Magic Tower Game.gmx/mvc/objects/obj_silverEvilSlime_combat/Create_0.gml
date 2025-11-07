event_inherited();
name = "Silver Evil Slime";
image_speed = 1/8;
x = 624;
y = 128;
image_xscale = 2.5;
image_yscale = 2.5;

spList = ds_list_create();
ds_list_add(spList, "Normal");
ds_list_add(spList, "Fire");
ds_list_add(spList, "Water");
ds_list_add(spList, "Grass");
ds_list_add(spList, "Rock");
ds_list_add(spList, "Electric");
ds_list_add(spList, "Ghost");
ds_list_add(spList, "Psychic");
ds_list_add(spList, "Unknown");

blendColor = c_white;
mixedAlpha = 0;
spIndex = 0;
sp = "Normal";
alarm[3] = 50;
alarm[4] = 10;

