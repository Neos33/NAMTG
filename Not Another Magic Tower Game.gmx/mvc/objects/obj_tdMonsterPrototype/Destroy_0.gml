if(ind < 0 || obj_tdController.isBoss) exit;
if(mInd != obj_tdController.currentIndex) exit;
var shadow = instance_create(padX, padY, obj_tdMShadow);
shadow.sprite_index = sprite_index;
shadow.image_index = 0;
shadow.image_speed = 0;
shadow.image_xscale = 0.8;
shadow.image_yscale = 0.8;
shadow.image_blend = merge_color(c_gray,c_black,0.5);
shadow.mInd = mInd;



