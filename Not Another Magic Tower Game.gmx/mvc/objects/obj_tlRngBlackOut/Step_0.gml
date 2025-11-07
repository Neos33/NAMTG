
if(step < 32)
{
    step += 2;
}
if(!player_is_alive())
{
    if(alpha > 0)
    {
        alpha -= 0.05;
    }  
    else
    {
        instance_destroy();
    } 
}


