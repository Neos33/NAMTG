/// @description  Fade out 
if(image_alpha > 0.5)
{
    image_alpha -= 0.02;
    alarm[0]= 1;
}
else
{
    alarm[1] = 10;
}

