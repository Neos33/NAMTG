if pose 
{
x+=(xx-x)/s
y+=(yy-y)/s
    
}
if shake
{
    shake -= 1;
    x = random_range(-8,8);
    y = random_range(-6,6);
}
direction+=dirspd

__view_set( e__VW.XView, 0, x )
__view_set( e__VW.YView, 0, y )

