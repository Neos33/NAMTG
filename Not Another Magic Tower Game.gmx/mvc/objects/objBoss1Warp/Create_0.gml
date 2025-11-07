onCollide = 1; //�G���ƃ��[�v�ł���ꍇ��true�A�G��Ă���[�v�ł��Ȃ��Ȃ�false
rS04 = 0;
roomTo=rS04;
image_alpha=0;
image_xscale=0;
image_yscale=0;

objBoss1Player = objDummy;
objFrontBlackCreate = objDummy;
objShadow = objDummy;

instance_create(player.x,player.y,objBoss1Player);
with player instance_destroy();
alarm[0]=50;
alarm[1]=50;
alarm[2]=150;
alarm[3]=250;
alarm[4]=380;
alarm[5]=300;

t = 0;
done = false;

warpX = 0;
warpY = 0;

timer = 0;
//warpX=400;
//warpY=183;
/**
Room�ɔz�u����Ă���warp��
Ctrl�����Ȃ���E�N���b�N�����
�uCreationCode�v��I����Ē���`���ĉ������B
�����ŁA�Đ�����ړ�����悪�錾����Ă��܂��B
roomTo�Ɉړ����镔����
warpX,warpY�Ɉړ�������W������Ă��������i�����Ȃ��Ă�����j
**/

/* */
/*  */
