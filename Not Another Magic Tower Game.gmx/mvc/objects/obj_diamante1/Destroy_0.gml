if(!global.clearItem[10] && global.monsters[ind])
{
    global.clearItem[10] = true;
    var itemController = instance_create(0,0,obj_msgItemController);
    itemController.itemInd = spr_diamondKey;
    itemController.msg = "You've got the diamond key. You can open the specific diamond door now.";
}

