texture_set_interpolation(true)

draw_surface_stretched_ext(blur_2X,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )
,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),c_white,min(1,amount/precision))

//draw_surface_stretched_ext(blur_2X,startX,startY
//,188,188,c_white,min(1,amount/precision))

texture_set_interpolation(false)

