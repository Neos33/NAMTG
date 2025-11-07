obj_pica_attack.view_kill = true;
with obj_pica_cam { instance_destroy() }
spd=-2;
xview=0;
yview=0;
wview=800;
hview=608;
aspect_ratio = hview/wview;
view_hstretchspeed=spd
view_vstretchspeed=spd*aspect_ratio
view_hspeed2=-spd/2
view_vspeed2=-spd*aspect_ratio
/*with obj_pica_cam instance_destroy()
spd=1/120
asd=spd*/

t = 0;

/* */
/*  */
