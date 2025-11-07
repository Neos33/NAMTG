if(image_alpha<=1 && flag==0)
{
    image_alpha+=0.01;
}
else
{
if(flag==0)
    flag=1;
}
if(animation==0)
  {

    if(point_distance(x,y,targetX, targetY) <(spd/2) )
    {
        x = targetX;
        y = targetY;
        hspeed = 0;
        vspeed = 0;
        animation = 1;
        alarm[4] = 1;
    }
    else
    {

        move_towards_point(targetX, targetY, spd);
    }
   
    
}
//此处为战斗场景按Rfasf不消失的解决办法（失败）
/*
if(room!=Roomavoidence  or room!=battlefasfroom)
{
instance_destroy();
}
*/

/* */
///Wrap 

var _margin = 32;
var _warped_vertically = false;

if x != median(x, -_margin - 1, 800 + _margin + 1)
{
    x = modwrap(x, -_margin, 800+_margin);
}

if y != median(y, -_margin - 1, 608 + _margin + 1)
{
    y = modwrap(y, -_margin, 608+_margin);
    _warped_vertically = true;
}

if _warped_vertically
{
    if(instance_exists(obj_continue_controller_of_superfasf) && obj_continue_controller_of_superfasf.pp && y < 64)
    {    
        obj_continue_controller_of_superfasf.alarm[3] = 3;
    }
    // Reset
    _warped_vertically = false;
}
//zbjkvnz.,nv,kjnb

/* */
/*  */
