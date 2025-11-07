draw_clear_alpha(c_black, 0);
if(pat==1)
{
    global.frozen2=1;
    if(rt<540)
    {
        rt+=27;
        obj_tre_bg.bg+=0.05;
    }
    else
    {
        pat=0;
        //reverse here
        global.frozen2=0;
        global.reverse = !global.reverse;
        with(player)
        {
            yflag = -yflag;
            player.y += yflag * 8;
            curJumps = 1;
            vspeed = 0;
        }
    }
    draw_surface_ext_center(surfScreen,400,304,xs,xs,rt,c_white,alp);
}
if(pat==2)
{
    pat_t2 -= 1;
    if(pat_t2>0)
    {
        for(var i=608;i>0;i-=2)
        {
            draw_surface_part_ext(surfScreen,0,608-i,800,2,800+random_range(-8,8),i,-1,-1,c_white,1);
        }
    }
    else
    {
       pat=0;
    }
}
if(pat==3)
{
    pat_t3 += 1;
    if(pat_t3<10){xs+=0.1;}
    else if(pat_t3<19){xs-=0.1;}
    else{xs=1;pat=0;}
    draw_surface_ext_center(surfScreen,400,304,xs,xs,rt,c_white,alp);
}
if(pat==4)
{
    cAng += 1.8;
    av = 15 * sin(degtorad(cAng));
    //if(a=1){rt=min(rt+0.33,550);}
    //else{rt=max(rt-0.66,530);}
    draw_surface_ext_center(surfScreen,400,304,xs,xs,rt+av,c_white,alp);
}
if(pat==0)
{
    draw_surface_ext_center(surfScreen,400,304,xs,xs,rt,c_white,alp);
}
//screen_refresh();

