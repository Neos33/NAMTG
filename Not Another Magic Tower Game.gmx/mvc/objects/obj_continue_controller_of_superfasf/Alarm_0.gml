// Target 
if(qq<5)
{
    with(obj_superFasf_combat)
    {
        instance_create(player.x,player.y,obj_supfasf_target);
    }
    alarm[0]=60;
    qq+=1;
}
else
{
    alarm[2]=1;
}

