var _sAngle, _dimension, _radius, _pAngle, _sx, _sy, _tx, _ty, _i;

_centerX = argument0;
_centerY = argument1;
_dimension = argument2;
_radius = argument3;
_sAngle = argument4;


_pAngle = 360/_dimension;
for(_i = 0;_i < _dimension; _i+=1)
{
    _sx = _centerX + lengthdir_x(_radius, _sAngle + _i * _pAngle);
    _sy = _centerY + lengthdir_y(_radius, _sAngle + _i * _pAngle);
    _tx = _centerX + lengthdir_x(_radius, _sAngle + (_i + 1) * _pAngle);
    _ty = _centerY + lengthdir_y(_radius, _sAngle + (_i + 1) * _pAngle);
    draw_line(_sx,_sy,_tx,_ty);
}

