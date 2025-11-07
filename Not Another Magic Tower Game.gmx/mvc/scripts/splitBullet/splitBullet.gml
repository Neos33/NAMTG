//splitBullet(x,y,speed,direction,sprite,image,number,angle,[object = obj_taisaBullet])
{
    var inst;
    var _x = argument[0];
    var _y = argument[1];
    var _speed = argument[2];
    var _direction = argument[3];
    var _sprite = argument[4];
    var _image = argument[5];
    var _number = argument[6];
    var _angle = argument[7];
    var _obj = obj_taisaBullet;
    
    if argument_count > 8
    {
        _obj = argument[8];
    }
    for(var i=(_number-1)/2; i>=0; i-=1){
        for(var j=-1; j<=1; j+=2){
            inst = instance_create(_x, _y, _obj);
            inst.speed = _speed;
            inst.direction = _direction + _angle*i*j;
            inst.image_angle = inst.direction;
            inst.sprite_index = _sprite;
            inst.image_index = _image;
        }
    }
}
