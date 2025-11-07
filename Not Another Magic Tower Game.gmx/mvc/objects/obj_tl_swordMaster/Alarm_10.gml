p = path_add();
path_set_kind(p,1);
path_set_precision(p,4);
var len = RangeClamp(player.x + random_range(-96, 96), 160, 640) - x;
path_set_closed(p, false);
path_add_point(p, x,y,100);
path_add_point(p, x + len / 2,y - 32,100);
path_add_point(p, x + len,y ,100);

path_start(p, 12, 0, true);


