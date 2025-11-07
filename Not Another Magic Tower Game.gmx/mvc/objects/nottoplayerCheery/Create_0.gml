image_speed=1/15;

//���@�_�������Ǌg�U������
//���@�̉��128�̂��������_���Ȉʒu��w��
xx=player.x+random_range(-128,128)
yy=player.y+random_range(-128,128)


//global.speedup��0��1���ɂ���ăX�s�[�h��ς���
//���g��xx,yy�Ƃ̊p�x����߁A���̕����Ɉړ�
if(global.speedup=0){
speed=4;
direction=point_direction(x,y,xx,yy)
}
if(global.speedup=1){
speed=6;
direction=point_direction(x,y,xx,yy)
}

