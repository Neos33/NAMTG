centerX = 436;
startY = 640;
txtSpd = 0.765;
sectionGap = 64;
titleGap = 40;
detailGap = 24;
totalSections = 12;
alarm[0] = 7;

ind = 0;
list[ind] = ds_list_create();  // 0 - producer
title[ind] = "PRODUCER";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "Light");
ds_list_add(list[ind], "Koala");
ds_list_add(list[ind], "Nikaple");
ds_list_add(list[ind], "Shiliu");
ds_list_add(list[ind], "Igzicorus");
ind += 1;

list[ind] = ds_list_create(); //1 - System
title[ind] = "SYSTEM DESIGN";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "Light");
ds_list_add(list[ind], "Koala");
ind += 1;


list[ind] = ds_list_create(); //2 - story
title[ind] = "STORY DESIGN";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "Light");
ds_list_add(list[ind], "Koala");
ind += 1;

list[ind] = ds_list_create(); //3 - Level
title[ind] = "LEVEL DESIGN"; 
subList[ind] = false;
subListCount[ind] = 2;
evtInd[ind] = 0

ds_list_add(list[ind], "Light");
ds_list_add(list[ind], "Koala");
ind += 1;

title[ind] = "SECRETS, PUZZLES & MINI GAMES"; //4 - Secrets, Puzzles & Mini Games
subList[ind] = true;
subListCount[ind] = 2;
evtInd[ind] = 1;
central[ind] = true;

subCategory[ind,0] = ds_list_create();
subCategory[ind,1] = ds_list_create();
ds_list_add(subCategory[ind,0], "Secret 1");        ds_list_add(subCategory[ind,1], "Light");
ds_list_add(subCategory[ind,0], "Secret 2");        ds_list_add(subCategory[ind,1], "Light");
ds_list_add(subCategory[ind,0], "MMM Fingers");     ds_list_add(subCategory[ind,1], "Light");
ds_list_add(subCategory[ind,0], "Echoshift");       ds_list_add(subCategory[ind,1], "Light, Shiliu");
ds_list_add(subCategory[ind,0], "Bubble Stage");    ds_list_add(subCategory[ind,1], "Light, Koala");
ds_list_add(subCategory[ind,0], "Side Tower");      ds_list_add(subCategory[ind,1], "Shiliu");
ds_list_add(subCategory[ind,0], "Saint Cross");     ds_list_add(subCategory[ind,1], "Light");
ds_list_add(subCategory[ind,0], "Renal Treasure");  ds_list_add(subCategory[ind,1], "Light");
ds_list_add(subCategory[ind,0], "Fairy Tail");      ds_list_add(subCategory[ind,1], "Light");
if(global.specialBlock[14])
{
ds_list_add(subCategory[ind,0], "Secret 3");        ds_list_add(subCategory[ind,1], "Light, Igzicorus");
}
else
{
ds_list_add(subCategory[ind,0], "???");             ds_list_add(subCategory[ind,1], "???");
}
ds_list_add(subCategory[ind,0], "???");             ds_list_add(subCategory[ind,1], "???");
ds_list_add(subCategory[ind,0], "???");             ds_list_add(subCategory[ind,1], "???");
ind += 1;



title[ind] = "BATTLE DESIGN";  //5 - Battle
subList[ind] = true;
subListCount[ind] = 3;
evtInd[ind] = 2;

subCategory[ind,0] = ds_list_create();
subCategory[ind,1] = ds_list_create();
subCategory[ind,2] = ds_list_create();
ds_list_add(subCategory[ind,0], spr_slime_s_combat);      ds_list_add(subCategory[ind,1], "Small Slime");            ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_slime_red_combat);      ds_list_add(subCategory[ind,1], "Red Slime");              ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_slime_black_combat);      ds_list_add(subCategory[ind,1], "Black Slime");            ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_slime_king_combat);      ds_list_add(subCategory[ind,1], "Slime King");             ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_batChild_combat);      ds_list_add(subCategory[ind,1], "Small Bat");              ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_orcWarrior_combat);      ds_list_add(subCategory[ind,1], "Orc Warrior");            ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_orcSwordsman_combat);      ds_list_add(subCategory[ind,1], "Orc Swordsman");          ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_stone_combat);      ds_list_add(subCategory[ind,1], "Stone");                  ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_skeleton_combat);      ds_list_add(subCategory[ind,1], "Skeleton");               ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_skeletonSwordsman_combat);      ds_list_add(subCategory[ind,1], "Skeleton Swordsman");     ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_skeletonKing1);      ds_list_add(subCategory[ind,1], "Skeleton King");          ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_batBattle);      ds_list_add(subCategory[ind,1], "Bat");                    ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_dlFasf);      ds_list_add(subCategory[ind,1], "FASF");                   ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_magelv1_combat);      ds_list_add(subCategory[ind,1], "Junior Mage");            ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_yellowKnight1);      ds_list_add(subCategory[ind,1], "Yellow Knight");          ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_guardlv1_battle);      ds_list_add(subCategory[ind,1], "Junior Guard");           ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_redBat_combat);      ds_list_add(subCategory[ind,1], "Red Bat");                ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_smileSlime_combat);      ds_list_add(subCategory[ind,1], "Smiling Slime");          ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_steel_combat);      ds_list_add(subCategory[ind,1], "Steel");                  ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_diaoSlime_combat);      ds_list_add(subCategory[ind,1], "Diao Slime");             ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_magicianlv1_combat);      ds_list_add(subCategory[ind,1], "Junior Magician");        ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_guardlv2Combat);      ds_list_add(subCategory[ind,1], "Intermediate Guard");     ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_magician2Battle_1);      ds_list_add(subCategory[ind,1], "Senior Magician");        ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_mage2Battle1);      ds_list_add(subCategory[ind,1], "Senior Mage");            ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_orcMageCombat);      ds_list_add(subCategory[ind,1], "Orc Mage");               ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_blueKnight1);      ds_list_add(subCategory[ind,1], "Blue Knight");            ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_variationSkeletonCombat);      ds_list_add(subCategory[ind,1], "Variation Skeleton");     ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_dlSuperFasf1);      ds_list_add(subCategory[ind,1], "Super FASF");             ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_tlGuardLv3);      ds_list_add(subCategory[ind,1], "Senior Guard");           ds_list_add(subCategory[ind,2], "Koala");

ds_list_add(subCategory[ind,0], spr_draculaCombat);      ds_list_add(subCategory[ind,1], "Dracula");                ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_variationBat_combat);      ds_list_add(subCategory[ind,1], "Giant Bat");              ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_orcSkeleton_combat);      ds_list_add(subCategory[ind,1], "Seleton Orc");            ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_redKnightCombat);      ds_list_add(subCategory[ind,1], "Red Knight");             ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_silverEvilSlime_combat);      ds_list_add(subCategory[ind,1], "Silver Evil Slime");      ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_goldEvilSlime_combat);      ds_list_add(subCategory[ind,1], "Gold Evil Slime");        ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_swordMaster_combat);      ds_list_add(subCategory[ind,1], "Sword Master");           ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_blackDevilMagician_combat);      ds_list_add(subCategory[ind,1], "Black Devil Magician");   ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_burningSlime_combat);      ds_list_add(subCategory[ind,1], "Burning Slime");          ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_burningKnight_combat);      ds_list_add(subCategory[ind,1], "Burning Knight");         ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_burningFasf_center);      ds_list_add(subCategory[ind,1], "Burning FASF");           ds_list_add(subCategory[ind,2], "Koala");
ds_list_add(subCategory[ind,0], spr_darkMage_combat);      ds_list_add(subCategory[ind,1], "Dark Mage");              ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_darkSummoner_combat);      ds_list_add(subCategory[ind,1], "Dark Summoner");          ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_darkWarrior_combat);      ds_list_add(subCategory[ind,1], "Dark Warrior");           ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_darkLord_combat);      ds_list_add(subCategory[ind,1], "Dark Lord");              ds_list_add(subCategory[ind,2], "Light");

ds_list_add(subCategory[ind,0], spr_miniboss1_combat);      ds_list_add(subCategory[ind,1], "Yaranaika");              ds_list_add(subCategory[ind,2], "Light, Koala");
ds_list_add(subCategory[ind,0], -100);      ds_list_add(subCategory[ind,1], "3B6");                    ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_faShiLiu_se);      ds_list_add(subCategory[ind,1], "FaShiLiu");               ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_Octopus_combat);      ds_list_add(subCategory[ind,1], "Faro");                   ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_diamante_combat);      ds_list_add(subCategory[ind,1], "Mr.Diamante");            ds_list_add(subCategory[ind,2], "Nikaple");
ds_list_add(subCategory[ind,0], spr_trebole_combat2);      ds_list_add(subCategory[ind,1], "Mr.Trebole");             ds_list_add(subCategory[ind,2], "Nikaple");
ds_list_add(subCategory[ind,0], spr_corazoneCombat);      ds_list_add(subCategory[ind,1], "Mr.Corazone");            ds_list_add(subCategory[ind,2], "Nikaple");
ds_list_add(subCategory[ind,0], spr_pica_combat);      ds_list_add(subCategory[ind,1], "Mr.Pica");                ds_list_add(subCategory[ind,2], "Nikaple");
ds_list_add(subCategory[ind,0], -101);      ds_list_add(subCategory[ind,1], "4B6");                    ds_list_add(subCategory[ind,2], "Light");
ds_list_add(subCategory[ind,0], spr_devilLead_combat);      ds_list_add(subCategory[ind,1], "The Tower Lead");         ds_list_add(subCategory[ind,2], "Light, Nikaple");
if(global.SpaceItems[4])
{
ds_list_add(subCategory[ind,0], spr_taisa);      ds_list_add(subCategory[ind,1], "Fapple");                    ds_list_add(subCategory[ind,2], "Nikaple");
}
else
{
ds_list_add(subCategory[ind,0], -1);      ds_list_add(subCategory[ind,1], "???");                    ds_list_add(subCategory[ind,2], "???");
}
ds_list_add(subCategory[ind,0], -1);      ds_list_add(subCategory[ind,1], "???");                    ds_list_add(subCategory[ind,2], "???");
ind += 1;

list[ind] = ds_list_create();  // 6 - Credit
title[ind] = "CREDITS";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "A64");
ds_list_add(list[ind], "Kuri");
ds_list_add(list[ind], "Lunatic Element");
ds_list_add(list[ind], "Andres Sgarrido");
ds_list_add(list[ind], "Sword Slinger");
ds_list_add(list[ind], "FailJguy");
ds_list_add(list[ind], "Xiao Cong");
ds_list_add(list[ind], "PP");
ind += 1;

list[ind] = ds_list_create();  // 7 - Testers
title[ind] = "TESTERS";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "A64");
ds_list_add(list[ind], "Kuri");
ds_list_add(list[ind], "Andres Sgarrido");
ds_list_add(list[ind], "Lunatic Element");
ds_list_add(list[ind], "Mirror Whisper");
ds_list_add(list[ind], "Sword Slinger");
ds_list_add(list[ind], "FASF");
ds_list_add(list[ind], "Xiao Cong");
ds_list_add(list[ind], "Leng Jian")
ds_list_add(list[ind], "51");
ds_list_add(list[ind], "07");
ds_list_add(list[ind], "Ka Zhu");
ind += 1;

list[ind] = ds_list_create();  // 8 - Special Thanks
title[ind] = "SPECIAL THANKS";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "Lunatic Element");
ds_list_add(list[ind], "Sunbla");
ds_list_add(list[ind], "A64");
ds_list_add(list[ind], "Andres Sgarrido");
ds_list_add(list[ind], "Sword Slinger");
ds_list_add(list[ind], "FailJguy");
ds_list_add(list[ind], "(and you)");
ind += 1;

list[ind] = ds_list_create();  // 9 - Sprite Resources
title[ind] = "SPRITE RESOURCES";
subList[ind] = false;
evtInd[ind] = 0;
central[ind] = true;
ds_list_add(list[ind], "RPG Maker vx");
ds_list_add(list[ind], "Magic Tower Sample");
ds_list_add(list[ind], "I wanna be the guy");
ds_list_add(list[ind], "Not Another Needle Game");
ds_list_add(list[ind], "I wanna be the calamity fortune");
ds_list_add(list[ind], "I wanna fapple");
ds_list_add(list[ind], "i wanna be the strong");
ds_list_add(list[ind], "http://spriters-resource.com");
ind += 1;
  

title[ind] = "BGM";  // 10 - BGM
subList[ind] = true;
evtInd[ind] = 3;

subCategory[ind,0] = ds_list_create();
subCategory[ind,1] = ds_list_create();
ds_list_add(subCategory[ind,0], "Title Screen");         ds_list_add(subCategory[ind,1], "S.S.H - The One Who Cannot Forget Remix");
ds_list_add(subCategory[ind,0], "Floor 1 to 10");        ds_list_add(subCategory[ind,1], "S.S.H - Big Blue Rock-Metal Remix");
ds_list_add(subCategory[ind,0], "Secret 1");             ds_list_add(subCategory[ind,1], "Bloody Tears Awesome Version");
ds_list_add(subCategory[ind,0], "Secret 2");             ds_list_add(subCategory[ind,1], "Amane - Eternal Fullmoon");
ds_list_add(subCategory[ind,0], "Yaranaika Fight");      ds_list_add(subCategory[ind,1], "Yaranaika");
ds_list_add(subCategory[ind,0], "Basement Floors");      ds_list_add(subCategory[ind,1], "Semaphore - Zenmuron Dark Rift N64 2014");
ds_list_add(subCategory[ind,0], "3B6 Fight");            ds_list_add(subCategory[ind,1], "-Angel Fall-");
ds_list_add(subCategory[ind,0], "FaShiLiu Fight");       ds_list_add(subCategory[ind,1], "Waterflame - Blast processing");
ds_list_add(subCategory[ind,0], "MMM Fingers");          ds_list_add(subCategory[ind,1], "Clastodon - I Can't Hear My Inner Demons");
ds_list_add(subCategory[ind,0], "Side Tower");           ds_list_add(subCategory[ind,1], "MKDEV_-_DVD-lab_Pro_2.28crk");
ds_list_add(subCategory[ind,0], "Floor 11 to 15");       ds_list_add(subCategory[ind,1], "ParagonX9 - Chaoz Fantasy");
ds_list_add(subCategory[ind,0], "Burning Zone");         ds_list_add(subCategory[ind,1], "yhheart keeps burning RMX");
ds_list_add(subCategory[ind,0], "Frozen Zone");          ds_list_add(subCategory[ind,1], "Sonic 3 Ice Cap Act 3 Remix");
if(global.special[13])
{
ds_list_add(subCategory[ind,0], "Fairy Tail");           ds_list_add(subCategory[ind,1], "bluelephan2 - Glacial");
}
else
{
ds_list_add(subCategory[ind,0], "???");                  ds_list_add(subCategory[ind,1], "???");
}
ds_list_add(subCategory[ind,0], "Faro Fight");           ds_list_add(subCategory[ind,1], "S.S.H - Stand Up Against Myself Remix");
ds_list_add(subCategory[ind,0], "Mr.Diamante Fight");    ds_list_add(subCategory[ind,1], "S.S.H - Holy Orders Remix ");
ds_list_add(subCategory[ind,0], "Mr.Trebole Fight");     ds_list_add(subCategory[ind,1], "Cantarella Grace Edition");
ds_list_add(subCategory[ind,0], "Mr.Pica Fight");        ds_list_add(subCategory[ind,1], "LeaF - Calamity Fortune");
ds_list_add(subCategory[ind,0], "Floor 16 and higher");  ds_list_add(subCategory[ind,1], "S.S.H - False Prophet");
if(global.specialBlock[14])
{
ds_list_add(subCategory[ind,0], "Secret 3");                  ds_list_add(subCategory[ind,1], "Memme - Extreme Fantasy");
}
else
{
ds_list_add(subCategory[ind,0], "???");                  ds_list_add(subCategory[ind,1], "???");
}
ds_list_add(subCategory[ind,0], "4B6 Fight");            ds_list_add(subCategory[ind,1], "S.S.H - The Decisive Battle Remix");
ds_list_add(subCategory[ind,0], "Tower Lead Fight");     ds_list_add(subCategory[ind,1], "S.S.H - ToP Fighting of the Spirit Remix");
if(global.SpaceItems[4])
{
ds_list_add(subCategory[ind,0], "Fapple Fight");         ds_list_add(subCategory[ind,1], "DoDonPachi DaiOuJou - Death Label 95-97-02");
}
else
{
ds_list_add(subCategory[ind,0], "???");                  ds_list_add(subCategory[ind,1], "???");
}
ds_list_add(subCategory[ind,0], "Gallery");              ds_list_add(subCategory[ind,1], "Memme - Erebus");
ds_list_add(subCategory[ind,0], "Bad Ending");           ds_list_add(subCategory[ind,1], "tourmithefly - End of it all");
ds_list_add(subCategory[ind,0], "Gay Ending");           ds_list_add(subCategory[ind,1], "Caramell - Caramelldansen");
ds_list_add(subCategory[ind,0], "Sleep Ending");         ds_list_add(subCategory[ind,1], "S.S.H - Wish");
ds_list_add(subCategory[ind,0], "???");                  ds_list_add(subCategory[ind,1], "???");
ds_list_add(subCategory[ind,0], "???");                  ds_list_add(subCategory[ind,1], "???");
ds_list_add(subCategory[ind,0], "???");                  ds_list_add(subCategory[ind,1], "???");
ds_list_add(subCategory[ind,0], "Other Resources");      ds_list_add(subCategory[ind,1], "RPG Maker vx");
ds_list_add(subCategory[ind,0], "");                     ds_list_add(subCategory[ind,1], "Magic Tower Sample");
ds_list_add(subCategory[ind,0], "");                     ds_list_add(subCategory[ind,1], "Not Another Needle Game");
ds_list_add(subCategory[ind,0], "");                     ds_list_add(subCategory[ind,1], "http://www.newgrounds.com");
ind += 1;

list[ind] = ds_list_create();  // 11 - engine
title[ind] = "ENGINE";
subList[ind] = false;
evtInd[ind] = 0;
ds_list_add(list[ind], "i wanna be the engine Nikaple edition");
ind += 1;


