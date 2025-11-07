draw_set_color(c_white);
draw_rectangle(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 - halfBGWidth, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 + halfBGWidth, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), false);
bgOffset = RangeClamp(meter / 2, 0, 608 * 3);
draw_sprite_ext(spr_redKnightBG, RangeClamp(floor(bgOffset / 608), 0, 3), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 - halfBGWidth, __view_get( e__VW.YView, 0 ) + (bgOffset mod 608), 2, 2, 0, c_white, 0.6);
draw_sprite_ext(spr_redKnightBG, RangeClamp(ceil(bgOffset / 608), 0, 3), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 - halfBGWidth, __view_get( e__VW.YView, 0 ) + (bgOffset mod 608) - 608, 2, 2, 0, c_white, 0.6);


