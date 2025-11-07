if(turning==0)
{
    x = cx + lengthdir_x(len,dir);
    y = cy + lengthdir_y(len,dir);
    dir += dirspd;
    dirspd+=0.05;
    if(!instance_exists(obj_tlBlueKnight))
    {
        instance_destroy();    
    }
}

