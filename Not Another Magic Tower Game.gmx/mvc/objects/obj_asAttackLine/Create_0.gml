alpha = 1;
speed = 35;
sx = x;
sy = y;
direction =point_direction(x,y,
          RangeClamp(player.x + random_range(-48,48), 16, 784),
          RangeClamp(player.y + random_range(-48,48), 16, 592));
start = true;
sound_fix(snd_touhou_laser1);


dispear = false;

