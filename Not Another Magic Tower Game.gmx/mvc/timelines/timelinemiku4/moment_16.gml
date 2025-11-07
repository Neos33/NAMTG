var a;

//�������ڂ���o���A���ɂ����a�ƒu���܂�
//a�̃X�s�[�h��6�A������135����225�̂������烉���_���Ɍ��肵�܂�

a=instance_create(x,y,objBigCherryblue)
a.direction=random_range(135,225)
a.speed=6

global.reset=0
global.reset2=0
global.speedup=0
instance_create(x+76,y-168,boundCherry)

