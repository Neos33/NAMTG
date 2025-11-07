if(sprInd > 0)
{
    //image_xscale -= 0.05;
    //image_yscale -= 0.05;
    sprInd -= 1;
    sprite_index = spr[sprInd];    
    alarm[1] = 5;
}
else
{
    instance_destroy();
}

