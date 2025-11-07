//finalCorridorPosExt(1,1.5);

if(!player_is_alive()) exit;
var ind;
if(x mod 32 == 0)
{
    ind = x/32;
    tx = obj_finalCorridorViewController.tx[ind];
    ty = y + obj_finalCorridorViewController.ty[ind];
    tw = obj_finalCorridorViewController.tw[ind];
    
    otx = obj_finalCorridorViewController.otx[ind];
    oty = y + obj_finalCorridorViewController.oty[ind];
    otw = obj_finalCorridorViewController.otw[ind];
    
    depth = y - ty;
}
else
{
    finalCorridorPosExt(1,1.5);
}

