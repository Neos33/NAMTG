draw_set_alpha(1);
draw_current();

var hpPer = hp/fullHp;
draw_set_color(merge_color(c_red,c_green,hpPer));
draw_rectangle(x-16,y-20,x-16+32*hpPer,y-18,false);

if(mInd < 0)
    exit;
if(mInd == obj_tdController.currentIndex)
{
    draw_sprite_ext(sprite_index,image_index,padX,padY,0.8,0.8,image_angle,c_white,1);
    draw_rectangle(padX-13,padY-16,padX-13+26*hpPer,padY-13.5,false);
}


draw_set_color(c_white);

