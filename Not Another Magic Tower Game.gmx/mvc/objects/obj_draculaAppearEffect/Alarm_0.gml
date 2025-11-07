if(image_index > 0)
{
    image_index -= 1;
    alarm[0] = 3;
}
else
{
    with(obj_dracula_combat)
    {
        if(!transformed && !(x == 304 && y == 368))
        {
            alarm[choose(5,6,7)] = 33;
        }
        else
        {
            tranformCountDown = 50;
            alarm[10] = 20;
        }
    }
    instance_destroy();
}

