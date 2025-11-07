var _ex, _ey, _type, _offset, _hitsound;

_ex = argument0;
_ey = argument1;
_type = argument2;
_offset = argument3;
_hitsound = argument4;

if(_type == 0)
{
    note = instance_create(_ex,_ey,obj_osuStandardElement);
    note.ind = obj_osuController.ind;
    obj_osuController.ind += 1;
}
else if(_type == 1)
{
    note = instance_create(_ex,_ey,obj_osuTaikoElement);
}
else if(_type == 2)
{
    note = instance_create(_ex,_ey,obj_osuCTBElement);
}
else if(_type == 3)
{
    note = instance_create(_ex,_ey,obj_osuManiaElement);
}

note.type = _type;
note.offset = _offset;
note.hitsound = _hitsound;

return note;
