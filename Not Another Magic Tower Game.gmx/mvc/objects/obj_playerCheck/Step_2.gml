if frozen exit;
/*if collision_circle(x,y,3,obj_finalTouhouKiller,1,1){
    sound_fix(sndDeath);
}*/
depth=target.depth-1;
x=target.x;
y=target.y;
if keyboard_check_direct(global.jumpbutton)
{
    visible=1;
    image_angle+=3;
    if !set
    {
        image_alpha=0;
        image_xscale=1.5;
        image_yscale=1.5;
        set=1;
    }
    if !done
    {
        if image_alpha<1
        {
            image_alpha+=0.2;
            image_xscale-=0.1;
            image_yscale-=0.1;
        }
        else{
            done=1;
        }
    }
}
else
{
    visible=0;
    done=0;
    set=0;
}

/* */
/*  */
