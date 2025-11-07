if(energyBallCount > 0)
{
    if(!sound_isplaying(sndQuake))
    {
        sound_fix(sndQuake);
    }
    energyBallCount -= 1;
    var ball = instance_create(x,y,obj_giantBatEnergyBall);
    ball.speed = 1.5;
    ball.direction = point_direction(x,y,player.x, player.y);
    alarm[11] = 100;
}


