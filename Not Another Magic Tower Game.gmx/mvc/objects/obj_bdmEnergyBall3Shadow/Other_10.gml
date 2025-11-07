if(ind > 1)
{
    child = instance_create(x,y,obj_bdmEnergyBall3Shadow);
    child.ind = ind - 1;
    child.scale = scale;
    child.image_xscale = child.ind * 0.1 * scale;
    child.image_yscale = child.ind * 0.1 * scale;
    child.depth = -child.ind;
    child.image_alpha = child.ind * 0.08 + 0.2;
    with(child)
    {
        event_user(0);
    }
}

