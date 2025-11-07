image_xscale -= sclspd;
image_yscale -= sclspd;
image_alpha -= alpspd;
if image_xscale<0 or image_yscale<0 or image_alpha<0{
    instance_destroy();
}

