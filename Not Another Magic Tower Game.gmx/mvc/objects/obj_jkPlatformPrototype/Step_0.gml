if(type == 0)
{
 opened = false;
}
else
{
 opened = true;
}
for(var i = 0; i < buttonTypeCount; i += 1)
{
    if(obj[i])
    {
        subOpen[i] = false;
        total = instance_number(obj[i]);
        count = 0;
        if(total > 0)
        {
            with(obj[i])
            {
                if(pressed)
                {
                    other.count += 1;
                }
            }
        }
        if(total == count)
        {
             subOpen[i] = true;
        }
    }
}
if(type == 0)
{
 if(subOpen[0] && subOpen[1] && subOpen[2])
 {
   opened = true;
 }
 else
 {
   opened = false;
 }
}
else
{
 if(subOpen[0] && subOpen[1] && subOpen[2])
 {
    opened = false;
 }
 else
 {
    opened = true;
 }
}
if(!opened)
{
    if(!b)
    {
     b = instance_create(x,y,movingPlatform);
     b.visible = false;
     b.hspeed = hspeed;
     b.vspeed = vspeed;
    }
    //b.x = x;
    //b.y = y;
    
    if(image_alpha < 1)
    {
        image_alpha += 0.02;
    }
}
else
{
    if(b)
    {
     with(b)
     {
      instance_destroy();
     }
     b = noone;
    }
    if(image_alpha > 0.25)
    {
        image_alpha -= 0.02;
    }
}

move_bounce_solid(false);

