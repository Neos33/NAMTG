var a,i,j;
audio_playsound(sndbrake)
row=8

for(i=0; i<row; i+=1)
{
    for(j=0; j<row; j+=1)
    {
        a=instance_create(x+32/row*i,y+32/row*j,objBoss1BlockPart);
        a.speed=random(2)+point_distance(x+32/row*i,y+32/row*j,x+12,y+12)/25;
        a.direction=point_direction(x+12,y+12,x+32/row*i,y+32/row*j)+random_range(-30,30);
        
    }
}

