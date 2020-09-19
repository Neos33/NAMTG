// set the image_alpha to 1 first !
// usage: fade_out(time)
// make the object fade-out in the total step of time(10 in default),
// if image_alpha is small than 0, destroy the instance
if(argument0!=0){
    image_alpha-=1/argument0;
}
else image_alpha-=0.1;


if image_alpha<=0{
    instance_destroy();
}
