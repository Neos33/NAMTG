frozen = false; //�����֎~���Ă���Ƃ���true�A���ʂ�false 
jump = 8.5; //�P�i�ڂ̃W�����v�̏����x
jump2 = 7; //�Q�i�ڂ̃W�����v�̏����x
djump = true; //�Q�i�ڂ̃W�����v���\�Ȃ�true�A�s�\�Ȃ�false
maxSpeed = 3; //���E�̈ړ����x�ihspeed�j
gravity = 0.4; //�d��
maxVspeed = 9; //�㉺�̍ő呬�x�ivspeed�j
if(global.reverse == 0){
    yflag = 1;
}
if(global.reverse == 1){
    yflag = -1;
    y -= 4;
    djump = 1;
}
onPlatform = false;

image_yscale = yflag;
image_speed = 0.2; //�A�j���[�V�����̑��x
if(image_xscale=-1){image_xscale = -1;}

life=5

//���[���hObject��������ΐ�������
//���[���hObject�̓Q�[���̃��[�h�⃊�X�^�[�g�𐧌�
if(instance_exists(world) == false){
  instance_create(0,0,world);
}

//�Z�[�u�f�[�^��������΍쐬
//if(room != rSelectStage){
if(file_exists("save"+string(global.savenum)) == false){
  global.death[global.savenum] = 0;
  global.time[global.savenum] = 0;
  saveGame();
}
//}
//Time��v������
alarm[0] = room_speed;

//���{���ibow�j�𐶐�
if !instance_exists(bow){
    instance_create(x,y,bow);
}

if(room == rFinalCorridor)
{
    visible = 0;
}
else
{
    visible = 1;
}


//global.player_killed = false;

injuredInterval = 0;
lavaDamage = 0;

block2 = 0;
hosei = 0;
onblock = 0;

isConvoy = false;

global.player_alive = true;


redKnightDash = false;

//print(instance_number(object_index));

