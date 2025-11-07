repeat (4) 
{
    var a=instance_create(x,y,obj_pica_cherry);
    a.direction=random(360)
    a.speed=8+3*sin(degtorad(random(360)))
    a.sprite_index=spr_pica_cRainbow;
    a.image_index=irandom(15)
    
}

alarm[2] = 1;

