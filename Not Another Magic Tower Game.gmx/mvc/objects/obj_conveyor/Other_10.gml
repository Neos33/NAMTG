switch(object_index)
{
    case obj_wayLeft:
        newObj = obj_wayRight;
        break;
    case obj_wayRight:
        newObj = obj_wayLeft;
        break;
    case obj_wayUp:
        newObj = obj_wayDown;
        break;
    case obj_wayDown:
        newObj = obj_wayUp;
        break;
    default:
        newObj = object_index;
        break;
}
with(instance_create(x,y,newObj))
{
    inited = !other.inited;
}
instance_destroy();

