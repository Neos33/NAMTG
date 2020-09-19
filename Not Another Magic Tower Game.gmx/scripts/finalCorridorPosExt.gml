//This system finds a position for X around a vertical pole
//based on current x and room_width and also finds an outer
//X to give a 3d fell

//argument 0 - Inner radius scale factor
//argument 1 - Outter Radius scale factor
if(!instance_exists(player)) exit;
var d r c rx a ma ri ro t_sina t_cosa;
d = room_width/pi;               //Sets the dimanter for the tower 254.648
r = d/2;                         //Sets the radius for the tower
c = 400;               //Sets the center point of thw tower *
a = 0.45*(x-player.x); //((180*x)/(pi*r))-((180*player.x)/(pi*r))
                                //Sets the angle (in degress) that the object
                                //Is at by treating it as a length around a
                                //circle or an arc

ri = r*argument0                //Canculates the inner radius for canculating
                                //postions
t_sina = sin(degtorad(a))                                
t_cosa = cos(degtorad(a))

tx = c+(ri*t_sina)    //Canculates the inner X psotion
ty = y+(ri*t_cosa)/3  //Canculates the inner Y postion
tw = argument0*t_cosa //Canculates the inner scale factor

ro = r*argument1                //Canculates the outer radius
otx = c+(ro*t_sina)   //Outer X
oty = y+(ro*t_cosa)/3 //Outer Y
otw = argument1*t_cosa //Outer scale factor

depth = y-(ty)                  //Sets the depth


//* This varible can be changed
