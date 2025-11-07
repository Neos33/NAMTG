if(image_xscale < 1.5)
{
 image_xscale += 0.05;
 image_yscale += 0.05;
 alarm[0] = 1;
}
else
{
 if(count < 6)
 {
     count += 1;
     alarm[1] = 1;
 }
}


