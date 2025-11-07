var pp = instance_create(x,y,obj_tlSkeletonBone);
pp.speed = random_range(8, 12);
pp.direction = random_range(60,120);
audio_playsound(snd_wallum);
alarm[3] = 5;

