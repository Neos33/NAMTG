if(alpha==1)
{
    image_alpha+=1/20
}

if(image_alpha==1)
{
    alpha = 0
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

