draw_sprite_tiled_area_ext(sprite_index,-1,xx,yy,
__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+800,__view_get( e__VW.YView, 0 )+640,c_white,0.5*image_alpha);
draw_sprite_tiled_area_ext(sprite_index,-1,-(xx+32),-(yy+16*sqrt(3)),
__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+800,__view_get( e__VW.YView, 0 )+640,c_white,0.5*image_alpha);
xx+=2;
yy-=2/sqrt(3);

timer+=1;
if timer>50{
    image_alpha-=0.05;
}
if image_alpha<0 instance_destroy()

