surfScreen = noone;
n=4;
xs=1;
ys=1;
rt=0;
alp=1;
surfScreen = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
deactivate = false;
if(!surface_exists(surfScreen))
{
    deactivate = true;
}

//deactivate = true; // Delete this

pat = 0;
pat_t2 = 0;
pat_t3 = 0;

cAng = 0;
av = 0;


surf_new_screen = noone;

