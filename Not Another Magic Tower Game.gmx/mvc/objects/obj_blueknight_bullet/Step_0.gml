if(turning==0)
{
    if instance_exists(_id)
    {
        x = _id.x + lengthdir_x(len,dir);
        y = _id.y + lengthdir_y(len,dir);
        
        dir += dirspd;
        dirspd+=0.05;
    }
}

