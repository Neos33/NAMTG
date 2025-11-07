var _p, _x, _y, _w, _i;

_p = argument0;
_x = argument1;
_y = argument2;
_w = argument3;

for(_i = floor(-_w/2);_i < floor(_w/2); _i+=1)
{
    draw_path(_p,_x + _i,_y,false);
}  
