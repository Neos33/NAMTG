cooldown = 0;
hp = 0;

grab = 0;
reflected = false;

//�v���C���[�̌����Ă�������ɔ��ł����A��莞�Ԃ��o�߂���Ə���
if instance_exists(player)
{
if(global.grav=0){hspeed = player.image_xscale*16;}
else{hspeed = player2.image_xscale*16;}
}
if(room == rRedKnight)
{
    vspeed = -16;
    hspeed = 0;
    image_angle = sign(image_xscale) * 90;
    alarm[1] = 1;
}
alarm[0] = 40;

if(room == rFinalCorridor)
{
    instance_change(obj_finalCorridorBullet,true);
}

energy = 0;
trace = 0;

