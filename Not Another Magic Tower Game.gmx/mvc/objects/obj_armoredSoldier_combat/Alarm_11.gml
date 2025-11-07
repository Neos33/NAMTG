instance_create(0,0,obj_asBGChanger);
instance_create(x,y,obj_asHaki);
instance_create(0,0,obj_asQTEController);
var qtePlayer = instance_create(player.x,player.y, obj_asQTEPlayer);
qtePlayer.sprite_index = player.sprite_index;
qtePlayer.image_index = player.image_index;
qtePlayer.image_xscale = player.image_xscale;
qtePlayer.image_speed = 1/8;
player.frozen = true;
player.visible = false;
bow.visible = false;

