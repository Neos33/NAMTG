sh+=0.4
t+=1
if t=2 
{
    if instance_exists(obj_pica_cam)
    {
        obj_pica_cam.x = random_range(-sh,sh);
        obj_pica_cam.y = random_range(-sh,sh);
    }
    t=0
    
}

