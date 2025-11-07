if(player_is_alive())
{
  var tempX = x;
  if(abs(tempX - player.x)  <= 1)
  {
    x = RangeClamp(player.x, minX, maxX);
  }
  else
  {
    x = RangeClamp(tempX + sign(player.x - tempX), minX, maxX);
  }
}
else
{
    sprite_index = spr_followingMonsterIdle;
    exit;
}
if(x == player.x)
{
    if(x > xprevious)
    {
        sprite_index = spr_followingMonsterRight;
    }
    else if(x < xprevious)
    {
        sprite_index = spr_followingMonsterLeft;
    }
    else
    {
        sprite_index = spr_followingMonsterIdle;
    }
}
else
{
    if(x > player.x)
    {
        sprite_index = spr_followingMonsterLeft;
    }
    else
    {
        sprite_index = spr_followingMonsterRight;
    }
}

