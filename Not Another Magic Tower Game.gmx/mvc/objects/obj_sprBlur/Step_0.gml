__view_set( e__VW.WPort, 0, _width )
__view_set( e__VW.HPort, 0, _height )

    visible=0
    surface_set_target(blur_2X)
    draw_sprite_ext(obj_TvController.spr,obj_TvController.sprIndex,startX + _width / 2,startY + _height / 2,1/_prec,1/_prec,0,c_white,obj_TvController.alpha);
    surface_reset_target()
    visible=1

__view_set( e__VW.WPort, 0, __view_get( e__VW.WView, 0 ) )
__view_set( e__VW.HPort, 0, __view_get( e__VW.HView, 0 ) )

texture_set_interpolation(true)

repeat(amount)
{
    surface_set_target(blur_1X)
    draw_surface_ext(blur_2X,0,0,.5,.5,0,c_white,1)
    surface_reset_target()

    surface_set_target(blur_2X)
    draw_surface_ext(blur_1X,0,0,2,2,0,c_white,1)
    surface_reset_target()
}

texture_set_interpolation(false)


if blur_on=1 && amount<8 {amount+=1}
if blur_on=0 && amount>0 {amount-=1}

