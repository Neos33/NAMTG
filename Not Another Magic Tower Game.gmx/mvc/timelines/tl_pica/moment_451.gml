at6=false
with obj_pica_cherry_papa {
dirspd=0
go=false
speed=0
x+=cos(degtorad(point_direction(x,y,400,300)))*40
y+=-sin(degtorad(point_direction(x,y,400,300)))*40
}

with obj_pica_cherry {
go=false
speed=0
x+=cos(degtorad(point_direction(x,y,400,300)))*40
y+=-sin(degtorad(point_direction(x,y,400,300)))*40
}
/*
with cherry3 {
go=false
speed=0
x+=cos(degtorad(point_direction(x,y,400,300)))*40
y+=-sin(degtorad(point_direction(x,y,400,300)))*40
}

/* */
instance_create(0,0,obj_pica_ef_zoom_sh)
f=1;
obj_pica.depth=-50;

/* */
/*  */
