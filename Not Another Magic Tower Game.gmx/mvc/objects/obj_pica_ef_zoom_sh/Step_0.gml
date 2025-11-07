asd+=spd
__view_set( e__VW.XView, 0, (1-asd)*800*.5 )
__view_set( e__VW.YView, 0, (1-asd)*600*.5 )
__view_set( e__VW.WView, 0, 800*(asd) )
__view_set( e__VW.HView, 0, 608*(asd) )
if asd>=1 instance_destroy()

