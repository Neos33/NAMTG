var i; var xx; var yy;
for (i=0; i<=argument0; i+=argument1)
{
    if(argument6) {
        xx=argument4 + lengthdir_x(argument2,argument3-i)
        yy=argument5 + lengthdir_y(argument2,argument3-i)
    }
    else {
        xx=argument4 + lengthdir_x(argument2,argument3+i)
        yy=argument5 + lengthdir_y(argument2,argument3+i)
    }
    draw_line(argument4, argument5, xx,yy)
}

