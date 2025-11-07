if(alpha==1){
image_alpha+=alphav
}

if(image_alpha==1){
alpha = 0
}

if(scale==1){
image_xscale-=1/150
image_yscale-=1/150
flag=1
}

if(image_xscale==0 && flag==1){
instance_destroy()
}

