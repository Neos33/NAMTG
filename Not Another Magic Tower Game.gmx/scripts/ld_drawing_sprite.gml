//ld_drawing_sprite(spr,w,col);

var spr,w,_tex;

spr = argument0;
w = argument1;
col = argument2;

_tex = sprite_get_texture(spr,0);
//texture_preload(_tex);
texture_set_interpolation(true);
draw_primitive_begin_texture(pr_trianglestrip,_tex);

for (i=global.ld_n-1; i>=0; i-=1)
{
    var _x1,_y1,ang,per;
    var _1_x,_1_y,_2_x,_2_y;
    _x1 = global.ld_x[i];
    _y1 = global.ld_y[i];
    per = i/global.ld_n;
    
 //   ang = point_direction(_x1,_y1,global.ld_x[i+1],global.ld_y[i+1]);
 if(i = 0){ang = point_direction(_x1,_y1,global.ld_x[i+1],global.ld_y[i+1]);}
 if(i = global.ld_n-1){ang = point_direction(global.ld_x[i-1],global.ld_y[i-1],_x1,_y1)}
 if(i>0 && i< global.ld_n-1)
 {
    var ang1,ang2;
    var qx1,qy1,qx2,qy2;
    ang1 = point_direction(_x1,_y1,global.ld_x[i-1],global.ld_y[i-1]);
    ang2 = point_direction(_x1,_y1,global.ld_x[i+1],global.ld_y[i+1]);
    qx1  = lengthdir_x(10,ang1);
    qy1  = lengthdir_y(10,ang1);
    qx2  = lengthdir_x(10,ang2);
    qy2  = lengthdir_y(10,ang2);
    ang  = point_direction(qx1,qy1,qx2,qy2);   
 }
    _1_x = (-w/2)*sin(degtorad(ang)) + _x1; 
    _1_y = (-w/2)*cos(degtorad(ang)) + _y1;
    _2_x = ( w/2)*sin(degtorad(ang)) + _x1; 
    _2_y = ( w/2)*cos(degtorad(ang)) + _y1; 
    
    draw_vertex_texture_color(_1_x,_1_y,per,0,col,1);
    draw_vertex_texture_color(_2_x,_2_y,per,1,col,1);
};

draw_primitive_end();
texture_set_interpolation(false);
