if(y >= other.y)
{
    eff = instance_create(x,other.y,obj_osuCTBCatchEffect);    
    eff.offsetX = other.x - x;
    correct = true;
    acc = 300;
    instance_destroy();
}

