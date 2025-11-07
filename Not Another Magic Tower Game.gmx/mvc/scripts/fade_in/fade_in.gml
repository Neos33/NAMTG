// set the image_alpha to 0 first !
// usage: fade_in(time)
// make the object fade-in in the total step of time(10 in default)

var _fade_duration = 10;
if argument_count == 1
{
    _fade_duration = argument[0];
}

if(image_alpha<=1)
{
    image_alpha+=1/_fade_duration;
}
else
{
    image_alpha=1;
}
