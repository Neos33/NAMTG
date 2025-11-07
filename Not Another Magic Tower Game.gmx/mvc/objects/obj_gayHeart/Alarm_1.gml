if(image_index < 4)
{
 image_index += 1;
 alarm[1] = 5;
}
else
{

    for(i = 0; i < 45; i+= 1)
     {
       rad = degtorad(i*8);
       heartElement = instance_create(x,y,obj_smallGrayCherry);
       heartElement.hspeed = 0.4 * 16 * power(sin(rad),3);
       heartElement.vspeed = -0.4 * (13 * cos(rad) - 5 * cos(2 * rad) - 2 * cos(3 * rad) - cos(4 * rad));
     }
 /*for(i = 0; i < 24; i+= 1)
 {
   rad = degtorad(15 * i);
   heartElement = instance_create(x,y,obj_smallGrayCherry);
   heartElement.hspeed = 0.4 * 16 * sin(rad);
   heartElement.vspeed = -0.4 * (13 * cos(rad) - 5 * cos(2 * rad) - 2 * cos(3 * rad) - cos(4 * rad));
 }*/
 instance_destroy();
}

/* */
/*  */
