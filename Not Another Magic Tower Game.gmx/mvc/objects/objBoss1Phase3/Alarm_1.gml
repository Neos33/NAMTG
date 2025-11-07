if !player_is_alive() exit;
audio_playsound(sndBossJump);
vspeed = -17;
hspeed = (400-x)/60;
//352
var a=instance_create(0,224,objBoss1Trigger1);
a.image_xscale=50;
t=1;

