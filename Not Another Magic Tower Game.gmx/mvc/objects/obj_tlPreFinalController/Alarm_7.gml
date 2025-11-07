with(instance_create(0,0,obj_tlFlashBack))
{
    image_index = (3 - other.fbCount) * 2;
}
fbCount -= 1;
if(fbCount > 0)
{
    alarm[7] = fbInterval;
}

