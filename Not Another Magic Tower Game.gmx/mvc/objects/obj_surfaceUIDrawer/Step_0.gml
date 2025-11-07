if(global.currentFloor == 10 && room != r10F && room != r10F_TE)
{
    global.isExtra = true;
}
else
{
    global.isExtra = false;
}
if(global.maxFloor < global.currentFloor)
{
    global.maxFloor = global.currentFloor;
}

if(keyboard_check_pressed(global.menubutton))
{
    if(instance_exists(obj_finalCorridorWhite) || instance_exists(obj_dirtyDealMenu))
    {
        exit;
    }
    if(deactivated == 0)
    {
        //if instance_exists(player)
        {
            if(player.frozen)
            {
                exit;
            }
        }
        index = 1;
        count = 0;
        mPage = 0;
        aPage = 0;
        deactivated = 1;
        event_user(0);
        with(obj_monsterPrototype)
        {
            if(!sample && ds_list_find_index(other.list, object_index) == -1)
            {
                ds_list_add(other.list, object_index);
                other.atk[other.count] = atk;
                other.def[other.count] = def;
                other.ex[other.count] = ex;
                other.spr[other.count] = sprite_index;
                other.name[other.count] = name;
                other.hp[other.count] = hp;
                other.status[other.count] = status;
                other.isBoss[other.count] = isBoss;
                other.count += 1;
            }
        }
        pauseImg = sprite_create_from_surface(application_surface, 0, 0, 800, 608, false, false, 0, 0);
        instance_deactivate_all(1);
        instance_activate_object(world);
        for(i = 0; i < maxSpecial; i+= 1)
        {
            if(global.special[i])
            {
                specialSelection = i;
                exit;
            }
        }
    }
    else
    {
        initialized = false;
        initialized1 = false;
        if(surface_exists(surf1))
        {
            surface_free(surf1);
        }
        surf1_hindex = 0;
        if(surface_exists(surf2))
        {
            surface_free(surf2);
        }
        surf2_hindex = 0;
        pauseImg = noone;
        instance_activate_all();
        deactivated = 0;
        ds_list_clear(list);
    }
}

if(deactivated)
{
    listened = false;
    with(obj_button)
    {
        if(listen == 1)
        {
            listened = true;
        }
    }  
    if(!listened)
    {  
    if(keyboard_check_pressed(global.upbutton))
    {
        surf1_hindex = 0;
        surf2_hindex = 0;
        audio_playsound(snd_wallum);
        if(index == 0)
        {
            index = maxIndex;
        }
        else
        {
            index -= 1;
        }
        isRefresh = true;
    }
    else if(keyboard_check_pressed(global.downbutton))
    {
        surf1_hindex = 0;
        surf2_hindex = 0;
        audio_playsound(snd_wallum);
        if(index == maxIndex)
        {
            index = 0;
        }
        else
        {
            index += 1;
        }
        isRefresh = true;
    }
    }
}

if(deactivated && index == 1)
{
    if(ppAvailable && abs(mouse_x - __view_get( e__VW.XView, 0 ) - ppx) < 83 && abs(mouse_y - __view_get( e__VW.YView, 0 ) - pageY) < 22)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            mIndex -= 1;
        }
    }
    
    if(pnAvailable && abs(mouse_x - __view_get( e__VW.XView, 0 ) - pnx) < 83 && abs(mouse_y - __view_get( e__VW.YView, 0 ) - pageY) < 22)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            mIndex += 1;
        }
    }
    /*if(surf1_hindex + 592 < surf1_height)
    {
        if(mouse_x > 200 && mouse_x < 800 && mouse_y > 576 && mouse_y <= 608)
        {
            surf1_hindex += 4;
        }
    }
    if(surf1_hindex > 0)
    {
        if(mouse_x > 200 && mouse_x < 800 && mouse_y >= 0 && mouse_y < 32)
        {
            surf1_hindex -= 4;
        }
    }
    else
    {
        surf1_hindex = 0;
    }*/
}

/* */
if(deactivated && index == 2)
{
    if(keyboard_check_pressed(global.leftbutton))
    {
        if(specialSelection == 0)
        {
            specialSelection = maxSpecial - 1;
        }
        else
        {
            specialSelection -= 1;
        }
        audio_playsound(snd_wallum);
    }
    else if(keyboard_check_pressed(global.rightbutton))
    {
        if(specialSelection == maxSpecial - 1)
        {
            specialSelection = 0;
        }
        else
        {
            specialSelection += 1;
        }
        audio_playsound(snd_wallum);
    }
}

/* */
if(deactivated && index == 4)
{
    if(ppAvailable && abs(mouse_x - __view_get( e__VW.XView, 0 ) - ppx) < 83 && abs(mouse_y - __view_get( e__VW.YView, 0 ) - pageY - 8) < 22)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            aIndex -= 1;
        }
    }
    
    if(pnAvailable && abs(mouse_x - __view_get( e__VW.XView, 0 ) - pnx) < 83 && abs(mouse_y - __view_get( e__VW.YView, 0 ) - pageY - 8) < 22)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            aIndex += 1;
        }
    }
   /*if(surf2_hindex + 592 < surf2_height)
    {
        if(mouse_x > 200 && mouse_x < 800 && mouse_y > 576 && mouse_y <= 608)
        {
            surf2_hindex += 4;
        }
    }
    if(surf2_hindex > 0)
    {
        if(mouse_x > 200 && mouse_x < 800 && mouse_y >= 0 && mouse_y < 32)
        {
            surf2_hindex -= 4;
        }
    }
    else
    {
        surf2_hindex = 0;
    }*/
}

/* */
if(deactivated && index == 5)
{
    backupSelection = -1;
    backupColor1 = c_white;
    backupColor2 = c_white;
    if(abs(mouse_x - 500) < __view_get( e__VW.XView, 0 ) + 217)
    {
        if(abs(mouse_y - 290) < __view_get( e__VW.YView, 0 ) + 71)
        {
            backupSelection = 0;
            backupColor1 = c_yellow;
        }
        else if(abs(mouse_y - 470) < __view_get( e__VW.YView, 0 ) + 71)
        {
            backupSelection = 1;
            backupColor2 = c_yellow;
        }
    }
    
    if(backupSelection != -1)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            
            if(backupSelection == 0)
            {
                fName = get_string("Please Enter a Backup Name:", "");
                if(fName == "")
                {
                    show_message("Back Name Cannot be Empty!");
                    exit;
                }
                if(!directory_exists(working_directory + "/BackUps"))
                {
                    directory_create(working_directory + "/BackUps");
                }
                nSaveName = working_directory + "/BackUps/" + fName + "(S)";
                nDeathName = working_directory + "/BackUps/" + fName + "(D)";
                nExtraName = working_directory + "/BackUps/" + fName + "(E)";
                //nAchievementName = working_directory + "/BackUps/" + fName + "(A)";
                if(file_exists(nSaveName))
                {
                    file_delete(nSaveName);
                }
                if(file_exists(nDeathName))
                {
                    file_delete(nDeathName);
                }
                if(file_exists(nExtraName))
                {
                    file_delete(nExtraName);
                }
                //if(file_exists(nAchievementName))
                //{
                //    file_delete(nAchievementName);
                //}
                file_copy("save1", nSaveName);
                file_copy("DeathTime", nDeathName);
                if(file_exists("extraSave"))
                {
                    file_copy("extraSave", nExtraName);
                }
                //file_copy("achievements", nAchievementName);
                if(file_exists(nSaveName))
                {
                    show_message("Backup Created");
                    if(!global.achievements[9])
                    {
                        ch = instance_create(0,608,obj_achievements);
                        ch.index = 9;
                        global.achievements[9] = true;
                    }
                }
                else
                {
                    show_message("Backup creation failed. Check if you have special characters included in your file name like '<>/\\|:*?'");
                }
            }
            else if(backupSelection == 1)
            {
                    
                fName = get_open_filename("NAMTG Saves|*(S)",working_directory + "\\BackUps");
                if(!file_exists(fName))
                {
                    if(file_exists(fName + "(S)"))
                    {
                        fName += "(S)";
                    }
                    else
                    {
                        show_message("File not exists.");
                        exit;
                    }
                }
                fName = filename_name(fName);
                jName = fName;
                fName = string_copy(fName,0, string_length(fName) - 3);
                if(fName + "(S)" != jName)
                {
                    show_message("Cannot find the NAMTG save file with the filename you input.");
                    exit;
                }                             
                nSaveName = working_directory + "/BackUps/" + fName + "(S)";
                nDeathName = working_directory + "/BackUps/" + fName + "(D)";
                nExtraName = working_directory + "/BackUps/" + fName + "(E)";
                //nAchievementName = working_directory + "/BackUps/" + fName + "(A)";
                isLoad = false;
                if(!file_exists(nSaveName))
                {
                    show_message("Failed to find specific backup.");
                }
                else
                {
                    isLoad = true;
                    file_delete("save1");
                    file_copy(nSaveName, "save1");
                }
                if(file_exists(nDeathName) && isLoad)
                {
                    file_delete("DeathTime");
                    file_copy(nDeathName, "DeathTime");
                    if(file_exists(nExtraName))
                    {
                        file_copy(nExtraName, "extraSave");
                    }
                    else
                    {
                        file_delete("extraSave");
                    }
                }
                //if(file_exists(nAchievementName) && isLoad)
                //{
                //    file_delete("achievements");
                //    file_copy(nAchievementName, "achievements");
                //}
                if(isLoad)
                {
                    loadGame();
                    loadDeathTime();
                }
            }
        }
    }
}

/* */
/// Cheat menu
if(deactivated && index == 6)
{
    mouseIn = false;
    for(p = 0; p < 5; p += 1)
    {
        if(mouse_x > (__view_get( e__VW.XView, 0 ) + 250) && mouse_x < (__view_get( e__VW.XView, 0 ) + 750) && mouse_y > (__view_get( e__VW.YView, 0 ) + 200 + p * 60) && mouse_y < (__view_get( e__VW.YView, 0 ) + 200 + p * 60 + 50))
        {
            cheatSelection = p + 1;
            mouseIn = true;
        }
    }
    if(!mouseIn)
    {
        cheatSelection = 0;
    }
    
    if(cheatSelection > 0 && mouse_check_button_pressed(mb_left))
    {
        if(cheatSelection == 1)
        {
            global.yellowKeyNum += 1;
        }
        else if(cheatSelection == 2)
        {
            global.blueKeyNum += 1;
        }
        else if(cheatSelection == 3)
        {
            global.redKeyNum += 1;
        }
        else if(cheatSelection == 4)
        {
            global.greenKeyNum += 1;
        }
        else if(cheatSelection == 5)
        {
            global.ironKeyNum += 1;
        }
        global.isCheated = true;
        audio_playsound(snditem);
        if(!global.achievements[10])
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 10;
            global.achievements[10] = true;
        }
    }
}

/* */
/// Floor transmitter
if instance_exists(player)
{
    if(player.frozen)
    {
        exit;
    }
}


if(global.special[0] && player_is_alive())
{
    if(keyboard_check_pressed(global.transmissionbutton))
    {
        if(room != rTaisa && room != rSpacePortal)
        {
            if(global.isExtra || instance_exists(obj_spaceController))
            {
                show_message("You cannot use Storey Teleporter here.");
                exit;
            }
        }
        if(global.currentFloor == 10)
        {
            if(room != r10F && room != r10F_TE)
            {
                show_message("You cannot use Storey Teleporter here.");
                exit;
            }
        }
        if(room == rBurning || room == rFreezing || room == rRenalTreasure || room == rFairyTail)
        {
            show_message("You cannot use Storey Teleporter here.");
            exit;
        }
        if(global.currentFloor == -2)
        {
            show_message("You cannot use it at this floor!");
            exit;       
        }
        //fl = get_integer("Provide a floor to teleport:", global.currentFloor);
        fl = get_integer("Provide a floor to teleport:", "");
        if(global.carryPrincess)
        {
            message_add("Storey Teleporter : Request rejected. Princess is too heavy!");
            message_add("Kid : .........");
            exit;
        }
        
        if(fl != global.currentFloor)
        {
            if(fl > global.maxFloor || fl < global.minFloor)
            {
                show_message("You cannot go to specified floor at current time!");
            }
            else
            {
                if(deactivated)
                {
                    instance_activate_object(player);
                }
                if(fl < 0)
                {
                    if(!global.story[21])
                    {
                        show_message("Basement flying is not supported yet!");
                    }
                    else
                    {
                        if(fl == -1)
                        {
                            if(global.currentFloor == -2)
                            {
                                player.x = 1728 + 17;
                                player.y = 288 + 23;                                     
                            }
                            else
                            {
                                player.x = 96 + 17;
                                player.y = 32 + 23;      
                            }
                            //transition_kind = 21;
                            //transition_steps = 100;
                            room_goto(rB1F);
                        }
                        else if(fl == -2)
                        {
                            player.x = 32 + 17;
                            player.y = 0 + 23; 
                            //transition_kind = 21;
                            //transition_steps = 100;
                            room_goto(rB2F);
                        }
                    }
                }
                else if(fl < global.currentFloor)
                {
                    if(fl == 13)
                    {
                        if(!global.story[28])
                        {
                            show_message("You need to reach 13F once before you can teleport there.");
                            exit;
                        }
                    }
                    player.x = rx[fl,1];
                    player.y = ry[fl,1];      
                    // Transition move down
                    //transition_kind = 17;            
                }
                else
                {
                    if(fl == 13)
                    {
                        if(!global.story[28])
                        {
                            show_message("You need to reach 13F once before you can teleport there.");
                            exit;
                        }
                    }
                    player.x = rx[fl,0];
                    player.y = ry[fl,0];
                    // Transition move up
                    //transition_kind = 16; 
                }
                
                if(fl >= 0)
                {
                    global.currentFloor = fl;
                    //transition_steps = 50;
                    room_goto(rm[fl]);
                }
            }
        }   
    }
}

/* */
///Wing: upstairs & downstairs
if player_is_alive() and instance_exists(player)
{
    if(player.frozen)
    {
        exit;
    }
}
    if(!deactivated && !global.isExtra)
    {
        if(global.upstairsWingNum > 0)
        {
            if(keyboard_check_pressed(global.upstairsbutton))
            {
                if(global.isExtra)
                {
                    show_message("You cannot use Upstairs Wing here.");
                    exit;
                }
                if(global.currentFloor == 10)
                {
                    if(room != r10F && room != r10F_TE)
                    {
                        show_message("You cannot use Upstairs Wing here.");
                        exit;
                    }
                }
                if(room == rBurning || room == rFreezing || room == rRenalTreasure || room == rFairyTail)
                {
                    show_message("You cannot use Upstairs Wing here.");
                    exit;
                }
                fly = show_question("Are you sure to use the Upstairs Wing?");
                if(fly)
                {
                    if(global.currentFloor == 10)
                    {
                        if(!global.story[25])
                        {
                            message_add("You've already reached the highest floor of the tower.");   
                        }            
                    }
                    else if(global.currentFloor >= 14)
                    {
                        message_add("You cannot use upstairs wing at current floor.");   
                    }
                    else if(global.currentFloor >= -1)
                    {
                        flr = global.currentFloor;
                        global.upstairsWingNum -= 1;
                        global.currentFloor += 1;
                        maxfloor = global.maxFloor;
                        minfloor = global.minFloor;
                        if(global.currentFloor > global.maxFloor)
                        {
                            global.maxFloor = global.currentFloor;
                        }
                        if(global.currentFloor < global.minFloor)
                        {
                            global.minFloor = global.currentFloor;
                        }
                        //transition_kind = 16;
                        player.x = rx[flr + 1, 0];
                        player.y = ry[flr + 1, 0];
                        room_goto(rm[flr + 1]);
                    }
                    else
                    {
                        flr = global.currentFloor;
                        global.upstairsWingNum -= 1;
                        global.currentFloor += 1;
                        maxfloor = global.maxFloor;
                        minfloor = global.minFloor;
                        if(global.currentFloor > global.maxFloor)
                        {
                            global.maxFloor = global.currentFloor;
                        }
                        if(global.currentFloor < global.minFloor)
                        {
                            global.minFloor = global.currentFloor;
                        }
                        //transition_kind = 21;
                        //transition_steps = 150;
                        player.x = 1728 + 17;
                        player.y = 288 + 23;
                        room_goto(rB1F);
                    }
                }
            }
        }
        else if(keyboard_check_pressed(global.upstairsbutton))
        {
            show_message("You don't have a Upstairs Wing at current time.");
        }
        if(global.downstairsWingNum > 0)
        {
            if(keyboard_check_pressed(global.downstairsbutton))
            {
                if(global.isExtra)
                {
                    show_message("You cannot use Downstairs Wing here.");
                    exit;
                }
                if(global.currentFloor == 10)
                {
                    if(room != r10F && room != r10F_TE)
                    {
                        show_message("You cannot use Downstairs Wing here.");
                        exit;
                    }
                }
                if(room == rBurning || room == rFreezing || room == rRenalTreasure || room == rFairyTail)
                {
                    show_message("You cannot use Downstairs Wing here.");
                    exit;
                }
                fly = show_question("Are you sure to use the Downstairs Wing?");
                if(fly)
                {
                    if(global.currentFloor <= 0)
                    {
                        if(!global.story[15])
                        {
                            message_add("There's no baseroom detected yet.");   
                        }
                        else
                        {
                            flr = global.currentFloor;
                            if(flr <= -2)
                            {
                                show_message("You've already at the bottom of the tower.");
                                exit;
                            }
                            global.downstairsWingNum -= 1;
                            global.currentFloor -= 1;
                            maxfloor = global.maxFloor;
                            minfloor = global.minFloor;
                            if(global.currentFloor > global.maxFloor)
                            {
                                global.maxFloor = global.currentFloor;
                            }
                            if(global.currentFloor < global.minFloor)
                            {
                                global.minFloor = global.currentFloor;
                            }
                            //transition_kind = 21;
                            //transition_steps = 150;
                            if(flr == 0)
                            {
                                player.x = 96 + 17;
                                player.y = 32 + 23;
                                room_goto(rB1F);
                            }
                            else if(flr == -1)
                            {
                                player.x = 32 + 17;
                                player.y = 0 + 23;
                                room_goto(rB2F);
                            }
                        }
                    }
                    else if(global.currentFloor == 14)
                    {
                        message_add("You cannot use downstairs wing at current floor.");   
                    }
                    else
                    {
                        flr = global.currentFloor;
                        global.downstairsWingNum -= 1;
                        global.currentFloor -= 1;
                        maxfloor = global.maxFloor;
                        minfloor = global.minFloor;
                        if(global.currentFloor > global.maxFloor)
                        {
                            global.maxFloor = global.currentFloor;
                        }
                        if(global.currentFloor < global.minFloor)
                        {
                            global.minFloor = global.currentFloor;
                        }
                        //transition_kind = 17;
                        player.x = rx[flr - 1, 1];
                        player.y = ry[flr - 1, 1];
                        room_goto(rm[flr - 1]);
                    }
                }
            }
        }
        else if(keyboard_check_pressed(global.downstairsbutton))
        {
            show_message("You don't have a Downstairs Wing at current time.");
        }
        if(global.centralWingNum > 0)
        {
            if(keyboard_check_pressed(global.centralflyingbutton))
            {
                if(global.isExtra || instance_exists(obj_spaceController))
                {
                    show_message("You cannot use Central Symmetry Flying Wing here.");
                    exit;
                }
                if(global.currentFloor == 10)
                {
                    if(room != r10F && room != r10F_TE)
                    {
                        show_message("You cannot use Central Symmetry Flying Wing here.");
                        exit;
                    }
                }
                if(room == rBurning || room == rFreezing || room == rRenalTreasure || room == rFairyTail || room == rFinalRoom || room == r16F || room == r17F)
                {
                    show_message("You cannot use Central Symmetry Flying Wing here.");
                    exit;
                }
                if(global.currentFloor < 0 || (global.currentFloor >= 14 && global.currentFloor != 15) || room == rEvilDragon)
                {
                    show_message("Central flying is not available in this floor.");
                    exit;
                }
                fly = show_question("Are you sure to use the Central Symmetry Flying Wing?");
                if(fly)
                {
                    if(room == rSecret1 || room == rSecret3)
                    {
                        finalX = 800 - player.x;
                        finalY = 608 - player.y;
                    }
                    else if(room == rSecret2)
                    {
                        finalX = 800 - player.x;
                        finalY = 32 + 576 - (player.y - 32);
                    }
                    else
                    {
                        if(player.x < 192)
                        {
                            message_add("You are not at a valid position of the current floor!");
                            exit;
                        }
                        else
                        {
                            finalX = 192 + 608 - (player.x - 192);
                            finalY = 608 - player.y;
                        }
                    }
                    
                    finalY += (23 - (32 - 23)) - (32 - 23);
                    with(player)
                    {
                        if(place_meeting(other.finalX, other.finalY, block))
                        {
                            other.isFlyAvailable = false;
                        }
                        else if(place_meeting(other.finalX, other.finalY, obj_specialAreaTeleportBlock))
                        {
                            other.isFlyAvailable = false;
                            other.isSpecialZone = true;
                        }
                        else
                        {
                            other.isFlyAvailable = true;
                        }
                    }
                    if(isFlyAvailable)
                    {
                        player.x = finalX;
                        player.y = finalY;
                        player.image_xscale *= -1;
                        global.centralWingNum -= 1;
                    }
                    else
                    {
                        if(isSpecialZone)
                        {
                            show_message("You cannot teleport to the place that is within a secret zone. Press 'M' to toggle the target mark.");
                        }
                        else
                        {
                            show_message("You cannot teleport to the place that exists the block. Press 'M' to toggle the target mark.");
                        }
                    }
                }
            }       
        }
        else if(keyboard_check_pressed(global.centralflyingbutton))
        {
            show_message("You don't have a Central Symmetry Flying Wing at current time.");
        }
    }


/* */
/// Wing: Central flying
if instance_exists(player)
{
    if(player.frozen)
    {
        exit;
    }
}
if(!deactivated && player_is_alive() && !global.isExtra)
{
    if(keyboard_check_pressed(global.centralflyingposbutton))
    {
        if(global.isExtra)
        {
            exit;
        }
        if(room == rB1F || room == rB2F)
        {
            show_message("Central flying is not available in this floor.")
        }
        else
        {
            if(drawTeleportTarget)
            {
                drawTeleportTarget = false;
            }
            else
            {
                drawTeleportTarget = true;
            }
        }
    }
}

/* */
/// Dynamite
if(!deactivated && player_is_alive())
{
    if(mouse_check_button_pressed(mb_left))
    {
        if(instance_exists(obj_dynamiteInUse))
        {
            with(obj_dynamiteInUse)
            {
                if(!global.dynamiteTutorial && room == r6F)
                {
                    if(!instance_place(x,y,obj_monsterPrototype))
                    {
                        message_add("Gay DW(Merchant): Hey! there's no monster there! Target the small slime!");
                    }
                    else if(target.object_index != obj_slime_s)
                    {
                        message_add("Gay DW(Merchant): Hey! I said target the small slime! Don't try fool with me!");
                    }
                    else
                    {
                        boom = instance_create(target.x + 16, target.y + 32, obj_dynamiteExplosion);
                        boom.target = target;
                        with(obj_dynamiteInUse)
                        {
                            instance_destroy();
                        }
                    }
                }
                else
                {
                    if(!instance_place(x,y,obj_monsterPrototype))
                    {
                        message_add("No monster targeted.");
                    }
                    else if(target.status == 2)
                    {
                        message_add("The monster is too strong that you cannot use the dynamite to kill it.");
                    }
                    else if(target.isBoss)
                    {
                        message_add("You cannot use dynamite to kill a boss level monster.");
                    }
                    else
                    {
                        boom = instance_create(target.x + 16, target.y + 32, obj_dynamiteExplosion);
                        boom.target = target;
                        with(obj_dynamiteInUse)
                        {
                            instance_destroy();
                        }
                    }
                }
            }
        }
    }
    if(mouse_check_button_pressed(mb_right) && instance_exists(obj_dynamiteInUse) && (global.dynamiteTutorial || room != r6F))
    {
        with(obj_dynamiteInUse)
        {
            cancelled = true;
            instance_destroy();
        }
        player.frozen = false;
    }
}

/* */
/// Dynamite
if player_is_alive()
{
if(!deactivated)
{
    if(keyboard_check_pressed(global.dynamiteButton))
    {
        if(!instance_exists(obj_dynamiteInUse))
        {
            if(global.dynamiteNum > 0)
            {
                player.frozen = true;
                instance_create(mouse_x,mouse_y,obj_dynamiteInUse);
            }
            else
            {
                show_message("You don't have a dynamite.");
            }
        }
        else
        {
            if(show_question("You already have the dynamite in hand, cancel the usage?"))
            {
                with(obj_dynamiteInUse)
                {
                    cancelled = true;
                    instance_destroy();
                }
                player.frozen = false;
            }
        }
    }
}
}

/* */
/*  */
