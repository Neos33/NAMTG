if(!global.clearItem[12] && global.monsters[ind])
{
    global.clearItem[12] = true;
    var itemController = instance_create(0,0,obj_msgItemController);
    itemController.itemInd = spr_heartKey;
    itemController.msg = "You've got the heart key. You can open the specific heart door now.";
}

