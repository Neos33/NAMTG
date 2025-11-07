t4+=1
repeat (4) 
{
    var a=instance_create(x,y,obj_pica_cherry3);
    a.direction=random(360)
    a.speed=random_range(1,9)
    a.friction=0.3
    a.sprite_index=spr_pica_cRainbow;
    a.image_index=t4 div 15;
    a.image_speed=0
}
alarm[4]=1;

