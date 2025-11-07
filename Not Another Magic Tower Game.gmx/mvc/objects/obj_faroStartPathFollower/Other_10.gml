len = path_get_length(path);
spd = len/time;
sx = path_get_x(path,0);
sy = path_get_y(path,0);
x = sx;
y = sy;
path_start(path,spd,0,1);

