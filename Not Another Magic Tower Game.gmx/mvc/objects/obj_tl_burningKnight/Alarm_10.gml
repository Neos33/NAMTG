ds_list_shuffle(movingList);
found = false;

var _total = ds_list_size(movingList);
for(var i = 0; i < _total; i+=1)
{
    targetId = ds_list_find_value(movingList,i);
    with(targetId)
    {
        if(y < 304 && y >= 32)
        {
            other.found = true;
            instance_create(x,y - 32,obj_tl_bkMovingTarget);
        }
    }
    if(found)
    {
        break;
    }
}

