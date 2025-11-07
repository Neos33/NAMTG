/*obj_mouseControlTileController.spr = spr;
if(obj_mouseControlTileController.obj == obj)
{
 obj_mouseControlTileController.ammount += ammount;
}
else
{
 obj_mouseControlTileController.obj = obj;
 obj_mouseControlTileController.ammount = ammount;
}*/
if(ds_map_exists(obj_mouseControlTileController.map,obj))
{
    var bubbleItem = ds_map_find_value(obj_mouseControlTileController.map, obj);
    bubbleItem.ammount += ammount;
}
else
{
    var bubbleItem = instance_create(0,0,obj_bubbleItem);
    bubbleItem.spr = spr;
    bubbleItem.ammount = ammount;
    ds_list_add(obj_mouseControlTileController.list, obj);
    ds_map_add(obj_mouseControlTileController.map, obj, bubbleItem);
}
sound_fix(sndBlockChange);
instance_destroy();

/* */
/*  */
