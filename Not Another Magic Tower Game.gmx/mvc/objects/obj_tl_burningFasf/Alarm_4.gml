if(attack1<5)
{
    instance_create(player.x,player.y,obj_burning_fasf_target);
    alarm[4]=70-10*attack1;
    attack1+=1;
}
else
{
    attack1=0;
    alarm[choose(5,6,10)]=100;
}

