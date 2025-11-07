if(wallCrossChange)
    exit; 
path_delete(path);
if(instance_exists(obj_darkWarrior_item))
{
    event_user(1);
}
else
{
    event_user(0);
}

