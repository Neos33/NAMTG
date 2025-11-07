audio_playsound(sndBlockChange);
x = -32;
y = -32;
up = instance_create(480,32,obj_upStairs);
up.warpX = 480 + 17;
up.warpY = 64 + 23;
up.roomTo = r16F;
up.image_alpha = 0;
save[0] = instance_create(448, 224, savePoint);
save[1] =instance_create(512, 224, savePoint);
for(i = 0; i < 2; i += 1)
{
    save[i].image_alpha = 0;
}
with(obj_armoredSoldier)
{
    image_alpha = 0;
    y = 32;
}
alarm[0] = 1;

