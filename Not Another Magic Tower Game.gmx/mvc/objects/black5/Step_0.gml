if(alpha==1)
{
    image_alpha+=1/50
}

if(image_alpha==1)
{
    alpha = 0
}

if(alpha2==1)
{
    image_alpha-=1/50
    flag = 1
}

if(image_alpha==0 && flag==1)
{
    instance_destroy()
}

