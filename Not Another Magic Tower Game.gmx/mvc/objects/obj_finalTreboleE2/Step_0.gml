image_alpha += alpspd;

if(des){
    image_xscale-=0.025;
    image_yscale-=0.025;
    if(image_xscale<=0){
        instance_destroy()
    }
}

