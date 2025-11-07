onPlatform = 0;
onblock = 0;


redKnightDash = false;

//global.player_killed = false;

frozen = false; //�����֎~���Ă���Ƃ���true�A���ʂ�false
jump = -8.5; //�P�i�ڂ̃W�����v�̏����x
jump2 = -7; //�Q�i�ڂ̃W�����v�̏����x
djump = true; //�Q�i�ڂ̃W�����v���\�Ȃ�true�A�s�\�Ȃ�false
maxSpeed = 3; //���E�̈ړ����x�ihspeed�j
gravity = -0.4; //�d��
maxVspeed = 9; //�㉺�̍ő呬�x�ivspeed�j
image_speed = 0.2; //�A�j���[�V�����̑��x
if(global.image_xscale=-1){image_xscale = -1;}
image_yscale=-1

//���[���hObject��������ΐ�������
//���[���hObject�̓Q�[���̃��[�h�⃊�X�^�[�g�𐧌�
if(instance_exists(world) == false){
  instance_create(0,0,world);
}

//���{���ibow�j�𐶐�
instance_create(x,y,bow);


//�Z�[�u�f�[�^��������΍쐬
if(file_exists("save"+string(global.savenum)) == false){
  global.death[global.savenum] = 0;
  global.time[global.savenum] = 0;
  saveGame();
}

//Time��v������




