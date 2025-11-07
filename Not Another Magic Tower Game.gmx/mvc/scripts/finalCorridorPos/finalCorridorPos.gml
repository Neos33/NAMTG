//This system finds a position for X around a vertical pole
//based on current x and room_width
if !player_is_alive()
    exit;

var d, r, c, rx, a, ma;
d = room_width/pi             //Sets the dimanter for the tower
r = d/2                       //Sets the radius for the tower
c = room_width/2              //Sets the center point of thw tower *
a = ((180*x)/(pi*r))-((180*player.x)/(pi*r))
                              //Sets the angle (in degress) that the object
                              //Is at by treating it as a length around a
                              //circle or an arc

tx = c+(r*sin(degtorad(a)))   //Canculates the x position on the tower (when
                              //drawn flat)
ty = y+(r*cos(degtorad(a)))/3 //The Y position (Useing this causes sprites not
                              //to line up well)
tw = (cos(degtorad(a)))       //The scale factor for the sprite
depth = y-(ty)                //The objects depth


//* This varible can be changed
