if(image_alpha<0.7 && flag==0)
{
image_alpha+=0.08;

}
else
{
flag=1;
}
if(image_alpha>=0 && flag==1)
image_alpha-=0.05;

image_xscale+=0.5;
image_yscale+=0.5;
if(image_alpha==0)instance_destroy();

