if(bullet_time<4)
{
    repeat(bullet_time+1)instance_create(x+16,y+16,obj_burning_fasf_bullet);
    instance_create(x+16,y+16,obj_bullet_launcher);
    bullet_time+=1;
    alarm[7]=80-10*bullet_time;
}
else
{
    bullet_time=0;
    
    alarm[choose(4,5,10)]=200;
}

