z += zspd;
r = 300/(300+z)
image_xscale = 0.25*r;
image_yscale = image_xscale;
image_alpha =power(r*7/6,3);

if(z<0)
{
    var inst = instance_place(x,y+vspeed,block);
    if inst != noone
    {
        if(flag==0 && inst.image_yscale == 1)
        {
            vspeed = -vspeed/3;
            flag=1;
            zspd*=-2;
            depth=1000010;
            mask_index=maskNothing;
        }
    }
}
alarm[8]=1;

