direction+=dirspd;
image_angle=direction+(sprite_index==spr_sdiamond)*90;
life-=1;
if(center){
    direction = point_direction(x,y,400,304)+5;
    speed = 20;
}

