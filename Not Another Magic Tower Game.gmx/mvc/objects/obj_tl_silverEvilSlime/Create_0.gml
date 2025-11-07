//event_inherited();
name = "Silver Evil Slime";
image_speed = 1/8;
x = 624;
y = 128;
image_xscale = 2.5;
image_yscale = 2.5;
hp = global.mHP;

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
mixedAlpha = 1;


spIndex = irandom_range(1,7);
image_index = spIndex;
sp = ds_list_find_value(spList, spIndex);


event_user(0);


