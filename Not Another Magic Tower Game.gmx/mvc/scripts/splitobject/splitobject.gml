//splitobject(number,speed,object,direction,self-destroy)
//direction: -1(random),1(to player),other(the number you assign)

var a,i,dir;

//��񂲂���݂����@�̊p�x�����dir�Ƃ��܂�
//�܂��̓����_���Ȋp�x��dir�Ƃ��܂�
if(argument3){dir=point_direction(x,y,player.x,player.y)}
else if(argument3=-1){dir=random(360)}
else {dir=argument3}

//���������p�x��v�Z���đ��
for(i=1;i<=argument0;i+=1;){
a=instance_create(x,y,argument2)
a.speed=argument1
a.direction=dir
dir+=360/argument0
}

//�Ō�Ɏ��g��j�󂵂܂�
if(argument4)instance_destroy();

