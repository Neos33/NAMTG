if(!global.clearItem[11] && global.monsters[ind])
{
    global.clearItem[11] = true;
    itemController = instance_create(0,0,obj_msgItemController);
    itemController.itemInd = spr_clubKey;
    itemController.msg = "You've got the club key. You can open the specific club door now.";
}

print("global.clearItem[11]: ", global.clearItem[11]);
print("global.monsters[ind]: ", global.monsters[ind]);
print("ind: ", ind);

