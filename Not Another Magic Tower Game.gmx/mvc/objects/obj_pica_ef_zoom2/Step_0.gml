scl+=spd
if scl<=0.02 scl=0.02
if scl>1 
{
    scl=1;
    instance_destroy()
}
xxspd=(px-xx)/5
yyspd=(py-yy)/5
if abs(yyspd)>=1 yyspd=sign(yyspd)*4.5*aux
if abs(xxspd)>=1 xxspd=sign(xxspd)*4.5*aux
xx+=xxspd
yy+=yyspd

x0=800*scl/2
y0=600*scl/2

__view_set( e__VW.XView, 0, xx-x0 )
__view_set( e__VW.YView, 0, yy-y0 )
__view_set( e__VW.WView, 0, 800*scl )
__view_set( e__VW.HView, 0, 600*scl )

