///createDiaBullet(x,y,speed,direction,sprite,image,[obj = obj_diaDanmaku])

var _x = argument[0];
var _y = argument[1];
var _speed = argument[2];
var _direction = argument[3];
var _sprite = argument[4];
var _image = argument[5];
var _obj = obj_diaDanmaku;

if argument_count > 6
{
    _obj = argument[6];
}

var inst = instance_create(_x, _y, _obj);
inst.speed = _speed;
inst.direction = _direction;
inst.image_angle = _direction;
inst.sprite_index = _sprite;
inst.image_index = _image;
return inst;

