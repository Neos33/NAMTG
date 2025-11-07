if(y<other.y && other.x-20<x<other.x+20)
{
instance_create(x,y+16,obj_burning_fasf_af_fire);
instance_destroy();
}
else
{
instance_destroy();
}

