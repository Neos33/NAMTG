d3d_transform_set_identity();
d3d_transform_set_rotation_x(90);
d3d_set_depth(myDepth);
draw_sprite_ext(sprite_index,image_index,myRotateX,myRotateY + 5,image_xscale,image_yscale,0,c_white,1 * image_alpha);
draw_sprite_ext(sprite_index,image_index,shadowRotateX,shadowRotateY,image_xscale,-image_yscale,0,c_gray,0.5 * image_alpha);
d3d_transform_set_identity();


/*draw_set_blend_mode(bm_add);
d3d_set_depth(obj_3dFloorDrawer.myDepth);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,-image_yscale,0,c_gray,0.5);
draw_set_blend_mode(bm_normal);


/* */
/*  */
