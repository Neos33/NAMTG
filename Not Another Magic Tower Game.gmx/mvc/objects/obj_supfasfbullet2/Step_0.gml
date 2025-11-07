if(scale==1)
{
    image_xscale-=1/20
    image_yscale-=1/20
}

if(image_xscale==0)
{
    instance_destroy()
}

if(alpha2==1)
{
    image_alpha-=1/20
    flag = 1
}

if(image_alpha==0 && flag==1)
{
    instance_destroy()
}

