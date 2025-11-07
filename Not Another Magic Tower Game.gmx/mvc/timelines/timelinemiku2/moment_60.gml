//���E�̂ǂ��炩���烉���_���Ƀl�M���łĂ���C�x���g
//i�Ƀ����_����0��1�������A���̒l�ɂ���ď�����ς���

i=choose(0,1)
if(i=0){
a=instance_create(0,random(608),objnegi)
a.hspeed=2
}else{
a=instance_create(800,random(608),objnegi)
a.hspeed=-2
a.image_xscale=-1
}

