if(obj_messageController.alpha > 0)
{
    obj_messageController.alpha -= 0.01;
    alarm[5] = 1;
}
else
{
    instance_destroy();   
}

