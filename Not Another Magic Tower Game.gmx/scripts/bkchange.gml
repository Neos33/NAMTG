with(obj_blueknightcherry)
{
    for(i = 0; i < 2; i+=1)
    { 
        aa=instance_create(x,y,obj_bkass);
        aa.sprite_index=choose(spr_bkass1,spr_bkass2,spr_bkass3,spr_bkass4);
        aa.hspeed = random_range(-3,3);
        aa.vspeed = random_range(-6, 0);
    }
}
  
    
    

with(obj_blueknightcherry)instance_destroy();
instance_create(0,0,white_flash1);
