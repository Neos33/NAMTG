ds_list_shuffle(movingList);
found = false;
for(var i = 0; i < ds_list_size(movingList); i+=1)
{
    var targetId = ds_list_find_value(movingList,i);
    with(targetId)
    {
        if(y < 304 && y >= 32)
        {
            other.found = true;
            instance_create(x,y - 32,obj_bkMovingTarget);
        }
    }
    if(found)
    {
        break;
    }
}

