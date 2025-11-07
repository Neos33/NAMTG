if(view_current != 0){exit}
if(y > __view_get( e__VW.YView, 0 ) + 608) exit;
var sw, sh, osw;

sw  = (sprite_width*tw)/2
sh  = (sprite_height)/2
osw = (sprite_width*otw)/2

if(tx<room_width/2)
{
    draw_sprite_ext(sprite_index,0,otx,y,otw,1,0,c_white,1);
    if(x == 800)
    {
        if(wall == noone)
        {
            draw_rectangle_color(otx+osw,y-sh,tx+sw,y+sh-1,c_black,c_dkgray,c_dkgray,c_black,0)
        }
    } 
    else
    {
        if(wall == noone)
        {
            draw_rectangle_color(otx+osw,y-sh,tx+sw,y+sh-1,c_black,c_dkgray,c_dkgray,c_black,0);
        }
    }
}
else
{
    draw_sprite_ext(sprite_index,0,otx,y,otw,1,0,c_white,1)
    if(x == 0)
    {
        if(wall == noone)
        {
            draw_rectangle_color(otx-osw,y-sh,tx-sw,y+sh-1,c_black,c_dkgray,c_dkgray,c_black,0);
        }
    }
    else
    {
        if(wall == noone)
        {
            draw_rectangle_color(otx-osw,y-sh,tx-sw,y+sh-1,c_black,c_dkgray,c_dkgray,c_black,0);
        }
        
    }
    
}

/*
if(tx<room_width/2)
    {draw_sprite_ext(sprite_index,0,otx,y,otw,1,0,c_white,1)
    draw_rectangle_color(otx+osw,y-sh,tx+sw,y+sh-1,c_black,c_dkgray,c_dkgray,c_black,0)}
  else
    {draw_sprite_ext(sprite_index,0,otx,y,otw,1,0,c_white,1)
    draw_rectangle_color(otx-osw,y-sh,tx-sw,y+sh-1,c_black,c_dkgray,c_dkgray,c_black,0)}

/* */
/*  */
