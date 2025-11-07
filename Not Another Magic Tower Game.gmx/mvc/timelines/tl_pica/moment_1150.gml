at16=true

bl=instance_create(0,0,obj_pica_blend)
bl.image_alpha=0
bl.spd=0.01


for(i=1;i<=23;i+=1){
    a=instance_create(32*i,576,obj_pica_arrow)
    a.image_index=i-1;
}

