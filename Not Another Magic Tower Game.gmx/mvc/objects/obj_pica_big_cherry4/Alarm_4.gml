var poi=point_direction(x,y,player.x,player.y);
for (var i=0; i<360; i+=60)
{
    var a=instance_create(x,y,obj_pica_cherry2);
    a.direction=i+poi+30
    a.speed=12
    a.sprite_index=sprite_index
    a.image_index=image_index;
};
instance_destroy()

