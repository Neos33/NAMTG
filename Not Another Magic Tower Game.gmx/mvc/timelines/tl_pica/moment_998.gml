f=1

at12=false
with obj_pica_cherry {
speed=0
dirspd=0
direction=0
x+=cos(degtorad(point_direction(player.x,player.y,x,y)))*40
y+=-sin(degtorad(point_direction(player.x,player.y,x,y)))*40}

