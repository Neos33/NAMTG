draw_set_color(make_color_rgb(0,255,255));
draw_set_alpha(0.5);
//draw_set_blend_mode(bm_add);
//offset = 0;
repeat(2)
{
    //scale = (12+offset)/12;
    num = irandom_range(-2,maxNum);
    for(i = 0; i < room_width; i+=cubeWidth)
    {
        tempNum = RangeClamp(num + irandom_range(-1,1),0,maxNum - irandom_range(0,4));
        num = tempNum;
        for(j = RangeClamp(-num,-num,0); j < RangeClamp(num,0,num); j += 1)
        {
            //draw_rectangle(i + 1, 76 + j * cubeWidth + 1, i + 7, 76 + j * cubeWidth + 7, false);
            draw_sprite(spr_startCube,0,i,76+j*cubeWidth);
            //draw_sprite_ext(spr_startCube,0,i - offset,76+j*cubeWidth - offset,scale,scale,0,c_white,1);
        }
    }
    num = irandom_range(0,maxNum);
    for(i = 0; i < room_width; i+=cubeWidth)
    {
        tempNum = RangeClamp(num + irandom_range(-1,1),0,maxNum - irandom_range(0,4));
        num = tempNum;
        for(j = RangeClamp(-num,-num,0); j < RangeClamp(num,0,num); j += 1)
        {
            //draw_rectangle(i + 1, 540 + j * cubeWidth + 1, i + 7, 540 + j * cubeWidth + 7, false);
            draw_sprite(spr_startCube,0,i,540+j*cubeWidth);
            //draw_sprite_ext(spr_startCube,0,i - offset,540+j*cubeWidth - offset,scale,scale,0,c_white,1);
        }
    }
    //offset += 4;
}


draw_reset_color();
//draw_set_blend_mode(bm_normal);

