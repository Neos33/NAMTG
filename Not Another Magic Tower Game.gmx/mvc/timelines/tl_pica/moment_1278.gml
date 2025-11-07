with obj_pica_cherry_giant {go4=true
pose=false
control=true
xx=400
yy=300
angle=point_direction(xx,yy,x,y)
distance=point_distance(xx,yy,x,y)
aglspd=8
disspd=-2}
bl=instance_create(0,0,obj_pica_blend)
bl.image_alpha=0
bl.spd=0.015
with obj_pica_cam instance_destroy()
instance_create(0,0,obj_pica_ef_spin)

