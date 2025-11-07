draw_set_color(color);
draw_set_alpha(0.5);
for(var i = 0; i < dimension; i += 1)
{
    var sx = centerX + lengthdir_x(minRadius, sAngle + pAngle * i);
    var sy = centerY + lengthdir_y(minRadius, sAngle + pAngle * i);
    var tx = centerX + lengthdir_x(maxRadius, sAngle + pAngle * i);
    var ty = centerY + lengthdir_y(maxRadius, sAngle + pAngle * i);
    draw_line(sx,sy,tx,ty);
}
drawPolygon(centerX, centerY, dimension, minRadius, sAngle);

draw_set_color(c_white);
draw_set_alpha(1);

