// set the image_alpha to 0 first !
// usage: fade_in(time)
// make the object fade-in in the total step of time(10 in default)
if(image_alpha<=1){
if(argument0!=0){
    image_alpha+=1/argument0;
}
else image_alpha+=0.1;
}
else{
    image_alpha=1;
}
