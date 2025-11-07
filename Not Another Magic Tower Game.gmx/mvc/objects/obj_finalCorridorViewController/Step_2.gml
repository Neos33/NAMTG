if(!player_is_alive()) exit;
for(var i=0;i<=800;i+=32)
{
    var d, r, c, rx, a, ri, ro, t_sina, t_cosa, ind;
    d = room_width/pi;               //Sets the dimanter for the tower 254.648
    r = d/2;                         //Sets the radius for the tower
    c = 400;               //Sets the center point of thw tower *
    a = 0.45*(i-player.x); //((180*x)/(pi*r))-((180*player.x)/(pi*r))
                                    //Sets the angle (in degress) that the object
                                    //Is at by treating it as a length around a
                                    //circle or an arc
    
    ri = r*1                //Canculates the inner radius for canculating
                                    //postions
    t_sina = sin(degtorad(a))                                
    t_cosa = cos(degtorad(a))
    
    ind = i/32;
    tx[ind] = c+(ri*t_sina)    //Canculates the inner X psotion
    ty[ind] = (ri*t_cosa)/3  //Canculates the inner Y postion
    tw[ind] = t_cosa //Canculates the inner scale factor
    
    ro = r*1.5                //Canculates the outer radius
    
    otx[ind] = c+(ro*t_sina)   //Outer X
    oty[ind] = (ro*t_cosa)/3 //Outer Y
    otw[ind] = 1.5*t_cosa //Outer scale factor
}
start = true;

