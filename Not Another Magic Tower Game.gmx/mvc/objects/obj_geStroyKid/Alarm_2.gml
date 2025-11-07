if(image_alpha > 0)
{
    image_alpha -= 0.01;
    alarm[2] = 1;
}
else
{
    instance_create(0,0,obj_gayStoryBlack);
}

