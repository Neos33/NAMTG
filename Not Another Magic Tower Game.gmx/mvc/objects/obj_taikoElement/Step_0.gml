if(type == 0 )
{
    sprite_index = spr_redtaiko;
}
else if(type==1)
{
    sprite_index = spr_bluetaiko;
}
else 
{
sprite_index = spr_bigredtaiko;
}

if(x < obj_taikoBoard.x - len300)
{
    instance_destroy();
}

