image_angle += 3;

x=par.x;
y=par.y;

scl=0.4+0.05*sin(ss);
ss+=0.05;
image_xscale=scl;
image_yscale=scl;

if !instance_exists(objBoss1Phase2)
{
    instance_destroy();
}

