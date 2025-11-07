key.onHold = false;
key.onBoom = true;
key.onSmash = false;
key.onRun = false;
key.direction = point_direction(key.x, key.y, player.x, player.y);
key.speed = 30;
sound_loop(sndBoomerang);
alarm[5] = 100;

