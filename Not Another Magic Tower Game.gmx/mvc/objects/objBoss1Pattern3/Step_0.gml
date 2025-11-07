if !player_is_alive()
{
    for(var i=0;i<12;i+=1)
    {
        alarm[i]=0;
    }
}
timer+=1;
image_angle += 3*sign(hspeed);
image_xscale = 1+0.2*sin(timer/10);
image_yscale = image_xscale;
if spin
{
    x = 400 + lengthdir_x(rr,dire);
    y = 160 + lengthdir_y(yy,dire);
    dire += dirspd;
    if dire - dire0 > 90 and done = 0
    {
        rr = 240;
        done = 1;
    }
    if decrease
    {
        rr -= 60/22;
        yy -= 10/22;
    }
    dirspd += 0.02;
    if timer mod 2 = 0
    {
        var a=instance_create(x,y,objBlend);
        a.sprite_index=sprite_index;
        a.image_index=image_index;
        a.image_xscale=image_xscale;
        a.image_yscale=image_yscale;
        a.image_alpha=image_alpha;
        a.image_blend=image_blend;
        a.image_angle=image_angle;
        a.alpspd=0.03;
        a.xsclspd=0.05;
        a.ysclspd=0.05;
        a.add=1;
    }
}

