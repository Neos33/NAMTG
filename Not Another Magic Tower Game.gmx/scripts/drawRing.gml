var _cx, _cy, _sx,_sy,_tx,_ty, _radius, _thickness, _startAngle, _totalAngle, _stepAngle, _color;
_cx = argument0;
_cy = argument1;
_radius = argument2;
_thickness = argument3;
_startAngle = argument4;
_totalAngle = argument5;
_stepAngle = argument6;
_color = argument7;

_sx = _cx + lengthdir_x(_radius, _startAngle);
_sy = _cy + lengthdir_y(_radius, _startAngle);
draw_set_color(_color);
while(_totalAngle > 0)
{
    _totalAngle -= _stepAngle;
    _startAngle -= _stepAngle;
    _tx = _cx + lengthdir_x(_radius, _startAngle);
    _ty = _cy + lengthdir_y(_radius, _startAngle);
    draw_line_width(_sx,_sy,_tx,_ty,_thickness);
    _sx = _tx;
    _sy = _ty;
}



