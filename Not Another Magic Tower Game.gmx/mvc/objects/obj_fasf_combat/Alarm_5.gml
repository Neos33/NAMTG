image_speed=0;
image_index=0;
var aa=instance_create(10,player.y,fasf_photo);
aa.hspeed=6;
aa.ind = 0;
var ab=instance_create(790,player.y,fasf_photo);
ab.hspeed=-6;
ab.ind = 1;
sound_fix(sndfasfhappen);
if i<4
{
    alarm[5]=50;
    i+=1;
}
else
{
    j=0;
    alarm[6]=50;
}

