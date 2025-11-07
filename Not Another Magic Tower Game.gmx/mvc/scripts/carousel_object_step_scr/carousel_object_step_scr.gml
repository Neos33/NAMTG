if(mouse_x < 800
&& mouse_x > 0
&& mouse_y < (global.Ypos + global.YRadius + 34)
&& mouse_y > (global.Ypos - global.YRadius - 34))
{
    rotateForce = mouse_x;
}
else
{
    rotateForce = global.Xpos;
}
deg += (rotateForce-global.Xpos)/100*global.sensitivity
ang = deg*pi/180
image_xscale = (y-(global.perspective*20))/(global.Ypos+global.YRadius-(global.perspective*20))
image_yscale = (y-(global.perspective*20))/(global.Ypos+global.YRadius-(global.perspective*20))
image_alpha = (y-(global.perspective*20))/(global.Ypos+global.YRadius-(global.perspective*20))
x = (global.XRadius*sin(ang))*global.Direction+global.Xpos
depth = -((y+1)*global.YRadius*2)
y = global.YRadius*cos(ang)+global.Ypos
