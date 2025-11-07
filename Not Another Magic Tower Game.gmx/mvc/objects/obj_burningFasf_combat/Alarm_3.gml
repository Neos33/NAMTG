if(image_alpha<1)
{
    image_alpha+=0.05;
    aa.image_alpha+=0.05;
    alarm[3]=1;
}
else
{
    var a=choose(4,5,6,10);
    alarm[a]=30;
}


