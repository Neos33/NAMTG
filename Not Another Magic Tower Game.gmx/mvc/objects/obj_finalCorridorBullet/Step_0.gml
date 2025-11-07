if(place_meeting(x+hspeed,y,block)){
a=instance_place(x+hspeed,y,block)
if(a.object_index=block)instance_destroy()
else if(a.visible=1)instance_destroy()
}

if(place_meeting(x+hspeed,y,obj_wall)){
a=instance_place(x+hspeed,y,obj_wall)
if(a.object_index=obj_wall)instance_destroy()
else if(a.visible=1)instance_destroy()
}

