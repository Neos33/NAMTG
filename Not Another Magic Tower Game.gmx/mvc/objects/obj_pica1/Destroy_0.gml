if(!global.clearItem[13] && global.monsters[ind])
{
    global.clearItem[13] = true;
    var itemController = instance_create(0,0,obj_msgItemController);
    itemController.itemInd = spr_spadeKey;
    itemController.msg = "You've got the spade key. You can open the specific spade door now.";
}

