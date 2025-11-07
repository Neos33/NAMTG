if(scale==1){
image_alpha-=1/25
image_xscale-=1/25
image_yscale-=1/25
flag=1
}

if(image_xscale==0 && flag==1){
instance_destroy()
}

