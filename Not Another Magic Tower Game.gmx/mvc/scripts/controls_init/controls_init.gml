ini_open(global.sfname);    // save file name, change this in the obj_options_init object;

global.leftbutton = ini_read_real("Controls","Left",37);
global.rightbutton = ini_read_real("Controls","Right",39);
global.upbutton = ini_read_real("Controls","Up",38);
global.downbutton = ini_read_real("Controls","Down",40);
global.jumpbutton = ini_read_real("Controls","Jump",16);
global.shotbutton = ini_read_real("Controls","Shoot",90);
global.restartbutton = ini_read_real("Controls","Restart",82);
global.pausebutton = ini_read_real("Controls","Pause",80);
global.skipbutton = ini_read_real("Controls","Skip",83);
global.menubutton = ini_read_real("Controls","Menu",88);
global.transmissionbutton = ini_read_real("Controls","Transmission",72);
global.upstairsbutton = ini_read_real("Controls","UpStairs",66);
global.downstairsbutton = ini_read_real("Controls","DownStairs",78);
global.centralflyingbutton = ini_read_real("Controls","CentralFlying",86);
global.centralflyingposbutton = ini_read_real("Controls","CentralFlyingPos",77);
global.doorButton = ini_read_real("Controls","Door",65);
global.dynamiteButton = ini_read_real("Controls","Dynamite",67);
global.spaceButton = ini_read_real("Controls","Space",32);

ini_close();


if !file_exists(global.sfname){
    controls_update();
}
