repeat(num8)
{
    if(flag8)
    {
        createBullet(x+random_range(-128,128),y+random_range(-128,128),random_range(2,5),random(360),spr_dot,choose(YELLOW,RED,PURPLE,GREEN));
    }
    else{
        createBullet(x+random_range(-128,128),y+random_range(-128,128),random_range(2,5),random(360),spr_dot,choose(PURPLE,GREEN));
    }
}
alarm[8] = 1;

