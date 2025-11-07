scale2 = random_range(0.1,1)

ii = instance_create(x,y,obj_star3)
ii.direction = random_range(direction-120,direction+120)
ii.speed = random_range(2,6)
ii.image_xscale = scale2
ii.image_yscale = scale2
ii.image_speed = random_range(0.2,1)
ii.scale = 1

alarm[0] = 1

