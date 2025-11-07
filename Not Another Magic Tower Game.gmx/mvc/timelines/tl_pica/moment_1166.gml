at16=false
bl.spd=-0.1

instance_create(0,608,obj_pica_water)
with obj_pica_ef_zoom2 {px=400;py=300;spd*=-.5;aux=0.5}
with obj_pica_cherry {
direction=point_direction(player.x,player.y,x,y)
speed=3}
f2=1

