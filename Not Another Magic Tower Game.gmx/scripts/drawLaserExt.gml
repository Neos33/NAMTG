var _sx, _sy, _color, _dir, _len, _width, _precision, _alpha;
_sx = argument0;
_sy = argument1;
_color = argument2;
_dir = argument3;
_len = argument4;
_width = argument5;
_precision = argument6;
_alpha = argument7;

var _tx, _ty, tempColor;
draw_set_blend_mode(bm_add);
_tx = _sx + lengthdir_x(_len, _dir);
_ty = _sy + lengthdir_y(_len, _dir);
for(i = 0; i < _precision; i+=1)
{
    tempColor = merge_color(_color, c_white, 1 / _precision * (i + 1) - 0.5);
    draw_set_color(tempColor);
    draw_set_alpha(1 / _precision * (i + 1) * _alpha);
    draw_line_width(_sx, _sy, _tx, _ty, _width * (_precision - i)/_precision);
}
draw_set_blend_mode(bm_normal);

//drawLaser(sx,sy,color,dir,len,width,precision,alpha);
