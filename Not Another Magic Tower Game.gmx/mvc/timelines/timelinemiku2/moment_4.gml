//���E�̂ǂ��炩���烉���_���Ƀl�M���łĂ���C�x���g
//i�Ƀ����_����0��1�������A���̒l�ɂ���ď�����ς���
//�l�M�̃I�u�W�F�N�g����A���ɂ����a�ƒu���A
//a�̃X�s�[�h�ƌ�����ݒ肷��

i=choose(0,1)
if(i=0){
a=instance_create(0,random(608),objnegi)
a.hspeed=2
}else{
a=instance_create(800,random(608),objnegi)
a.hspeed=-2
a.image_xscale=-1
}

