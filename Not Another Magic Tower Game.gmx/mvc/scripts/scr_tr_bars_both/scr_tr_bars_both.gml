
var s_prev, s_next, s_width, s_height, fraction;
s_prev = argument0; 
s_next = argument1; 
s_width = argument2; 
s_height = argument3; 
fraction = argument4; 

var bars, xsep, ysep, wid, hi, left, top;
bars = 4; 

draw_surface(s_prev, 0, 0);

xsep = s_width / bars; 
wid = xsep * fraction;
left = xsep / 2 * (1 - fraction); 
repeat (bars) {
    draw_surface_part(s_next, left, 0, wid, s_height, left, 0);
    left += xsep;
}

ysep = s_height / bars; 
hi = ysep * fraction; 
top = ysep / 2 * (1 - fraction); 
repeat (bars) {
    draw_surface_part(s_next, 0, top, s_width, hi, 0, top);
    top += ysep;
}
