d3d_transform_set_identity();
d3d_transform_set_rotation_x(90);

draw_set_color(make_color_rgb(255,215,0));
d3d_set_depth(50);
draw_set_alpha(0.5);
//draw_set_blend_mode(bm_add);
//offset = 0;
repeat(2)
{
    //scale = (6+offset)/6;
    num = irandom_range(0,maxNum);
    for(i = 0; i < obj_3dController.rWidth; i+=cubeWidth)
    {
        tempNum = RangeClamp(num + irandom_range(-1,1),0,maxNum - irandom_range(0,4));
        num = tempNum;
        for(j = -num; j < num; j += 1)
        {
            //draw_rectangle(i + 1, -obj_3dController.cStart + j * cubeWidth + 1, i + 5, -obj_3dController.cStart + j * cubeWidth + 5, false);
            //draw_sprite(spr_3dCubeGold, 0, i,-obj_3dController.cStart + j * cubeWidth);
            draw_sprite(spr_3dCubeGold, 0, i, j * cubeWidth);
            //draw_sprite_ext(spr_3dCubeGold,0,i - offset,j*cubeWidth - offset,scale,scale,0,c_white,1);
        }
    }
    //offset += 2;
}
//draw_set_blend_mode(bm_normal);
d3d_transform_set_identity();


draw_reset_color();

