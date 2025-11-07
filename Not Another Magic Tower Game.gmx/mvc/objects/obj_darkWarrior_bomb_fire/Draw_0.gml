draw_current();
//if(!start) exit;
for(var i = 1; i <= leftP; i += 1)
{
    if(i < p)
    {
        draw_sprite(sprite_index, 5, x-32*i,y);
    }
    else
    {
        draw_sprite(sprite_index,4, x-32*i,y);
    }
}

for(var i = 1; i <= rightP; i += 1)
{
    if(i < p)
    {
        draw_sprite(sprite_index, 5, x+32*i,y);
    }
    else
    {
        draw_sprite(sprite_index,6, x+32*i,y);
    }
}

for(var i = 1; i <= upP; i += 1)
{
    if(i < p)
    {
        draw_sprite(sprite_index, 2, x,y-32*i);
    }
    else
    {
        draw_sprite(sprite_index,1, x,y-32*i);
    }
}

for(var i = 1; i <= downP; i += 1)
{
    if(i < p)
    {
        draw_sprite(sprite_index, 2, x,y+32*i);
    }
    else
    {
        draw_sprite(sprite_index,3, x,y+32*i);
    }
}

