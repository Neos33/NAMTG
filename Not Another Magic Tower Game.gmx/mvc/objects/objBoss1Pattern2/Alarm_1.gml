objBoss1Parent.tid=id;
with objBoss1Bullet2
{
    if par = objBoss1Parent.tid
    {
        speed = 6;
        friction = -0.1;
    }
}
instance_destroy()

