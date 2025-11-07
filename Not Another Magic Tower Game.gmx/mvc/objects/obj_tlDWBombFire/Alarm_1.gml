if(sprInd > 0)
{
    sprInd -= 1;
    sprite_index = spr[sprInd];    
    alarm[1] = 5;
}
else
{
    instance_destroy();
}

