obj_pica_water.alarm[1]=1
a=instance_create(400,-20,obj_pica)
a.vspeed=0.7

//with dark_ani instance_destroy()
with obj_pica_blend_ani instance_destroy()
bl2=instance_create(0,0,obj_pica_blend)
bl2.image_blend=c_black
bl2.image_alpha=0
bl2.spd=0.01
bl2.depth=1000
bl2.depth+=1000

