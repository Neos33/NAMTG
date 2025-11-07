image_alpha -= alpha_speed;
image_xscale -= scale_speed;
image_yscale = image_xscale;
if(image_alpha<0 || image_xscale<0){
    instance_destroy();
}

