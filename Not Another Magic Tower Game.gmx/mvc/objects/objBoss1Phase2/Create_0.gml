action_inherited();
timeline_speed=BPM/750;
image_speed=0.17;
var a=instance_create(x,y,objBoss1Magic);
a.par=id;
instance_create(496,448,objBoss1Spike3);
instance_create(272,448,objBoss1Spike2);
alarm[0]=1;
dir=random(360);
dir2=random(360);
dir3=random(360);
dir4=random(360);
dir5=random(360);


timeline_index = tl_boss1_2;
timeline_position = 0;
timeline_running = true;


timer = 0;

