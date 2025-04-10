///scrInit();

scrInitEnums();

global.skipMonsters = false;
global.cooldown = false;
global.Blockable = 0;
global.carryPrincess = 0;
global.part = 0;

global.convoyUp = 0;
global.convoyDown = 0;
global.convoyLeft = 0;
global.convoyRight = 0;

global.monsters = array_create(1001);
global.achievements = array_create(300);
global.story = array_create(300);
global.special = array_create(300);
global.bubbleStageStar = array_create(300);
global.ExtraJkStar = array_create(300);
global.hpUp = array_create(300);
global.defUp = array_create(300);
global.mmmHighScore = 0;
global.stream_music = 0;

global.yellowKeyNum = 0;
global.blueKeyNum = 0;
global.redKeyNum = 0;
global.greenKeyNum = 0;
global.ironKeyNum = 0;

global.TotalKills = 0;
global.dynamiteTutorial = 0;
global.dynamiteNum = 0;
global.dynamitePurchaseTimes = 0;
global.MaxChallengePoints = 0;

global.challengeSets = array_create(10);
global.secretWalls = array_create(50);

global.blueKeys = array_create(100);
global.redKeys = array_create(80);
global.greenKeys = array_create(80);
global.ironKeys = array_create(80);

global.yellowDoors = array_create(175);
global.blueDoors = array_create(100);
global.redDoors = array_create(80);
global.greenDoors = array_create(80);
global.ironDoors = array_create(80);

global.story = array_create(80);
global.specialBlock = array_create(80);

global.floorTrigger = array_create(400);


global.randomMonstersKilled = 0;

global.lvBlocks = array_create(30);
global.TotalKeysGet = 0;
global.TotalKeysUsed = 0;

global.upstairsWing = array_create(10);
global.downstairsWing = array_create(10);
global.centralWing = array_create(10);


global.attUp = array_create(100);
global.challengeRewards = array_create(10);

global.defUp = array_create(200);
global.SpaceItems = array_create(20);
global.gemPlaced = array_create(10);
global.specialTriggers = array_create(10);
global.specialBlock = array_create(20);
global.hpUp = array_create(250);


// Weapons
global.swords = array_create(10);
global.shields = array_create(10);

//Special
global.special = array_create(20);
global.clearDoors = array_create(20);
global.clearItem = array_create(20);

// Story
global.story = array_create(90);
global.clearItem = array_create(10);

global.upstairsWingNum = 0;
global.downstairsWingNum = 0;
global.centralWingNum = 0;
global.playerExp = 0;
global.levelExp = 0;
global.currentLevel = 0;
global.currentFloor = 0;
global.maxFloor = 0;
global.minFloor = 0;
global.isCheated = 0;
global.isPreviousCheated = 0;

global.mmmTotalTries = 0;
global.mmmHighScore = 0;
global.mmmMedals = array_create(4);
global.stageIndex = 0;
global.currentBubbleStage = 0;
global.bubbleStageStar = array_create(10);
global.ExtraJKPortalPressed = array_create(9);
global.ExtraJkBest = array_create(10);
global.ExtraJkStar = array_create(10);

global.testAvailable = 0;

global.JKMapView = false;
global.shotEnergy = 1;
global.BESkipped = false;
global.GESkipped = false;
global.GalleryBossFight = false;
global.GalleryBossFightNum = 0;
global.GalleryBossFightInd = 0;
global.BR_Points = 0;
global.BR_Status = 0;
global.TrueEndEscape = false;

global.inCombat = 0;

global.trigger = array_create(400);

global.MagicCloak = 0;
global.DynamiteX3 = 0
global.PowerAmplifier = 0;
global.SaintShield = 0;
global.SaintSword = 0;

global.CCItem = array_create(3);

global.spaceTrigger = 0;

global.inGallery = false;
global.GalleryAtk = 0;
global.GalleryDef = 0;
global.GalleryHp = 0;
global.attack = 0;
global.defense = 0;
global.hp = 0;
global.expBonus = 0;

global.savenum = 1;
global.difficulty = 1;
global.death = array_create(4);
global.time = array_create(4);
global.timestep = array_create(4);
global.hour = array_create(4);
global.atime = array_create(4);
global.muni = array_create(4);
global.sec = array_create(4);
global.msec = array_create(4);

global.room_caption_def = "Not Another Magic Tower Game";

global.isJK = 0;
global.isAddMsg = 0;


global.flash_entity_amount = 100;

global.flash_object = array_create(global.flash_entity_amount);
global.flash_count = array_create(global.flash_entity_amount);
global.flash_time = array_create(global.flash_entity_amount);
global.flash_temptime = array_create(global.flash_entity_amount);

global.fade_out_object = array_create(global.flash_entity_amount);
global.fade_out_time = array_create(global.flash_entity_amount);



global.godmod = false;
global.shotEnergy = 0;
global.PowerAmplifier = false;

global.isRandom = false;

global.grav = 0;
global.reverse = 0;
global.boss = array_create(10);
global.item = array_create(10);
global.clear = false;
global.music = 0;
global.savenum = 0;

global._id = 0;


global.currentBGM = noone;
