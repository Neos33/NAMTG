ini_open(global.sfname)

//set new settings
ini_write_real("Controls","Left",global.leftbutton);
ini_write_real("Controls","Right",global.rightbutton);
ini_write_real("Controls","Up",global.upbutton);
ini_write_real("Controls","Down",global.downbutton);
ini_write_real("Controls","Jump",global.jumpbutton);
ini_write_real("Controls","Shoot",global.shotbutton);
ini_write_real("Controls","Restart",global.restartbutton);
ini_write_real("Controls","Pause",global.pausebutton);
ini_write_real("Controls","Skip",global.skipbutton);
ini_write_real("Controls","Menu",global.menubutton);
ini_write_real("Controls","Transmission",global.transmissionbutton);
ini_write_real("Controls","UpStairs",global.upstairsbutton);
ini_write_real("Controls","DownStairs",global.downstairsbutton);
ini_write_real("Controls","CentralFlying",global.centralflyingbutton);
ini_write_real("Controls","CentralFlyingPos",global.centralflyingposbutton);
ini_write_real("Controls","Door",global.doorButton);
ini_write_real("Controls","Dynamite",global.dynamiteButton);
ini_write_real("Controls","Space",global.spaceButton);

ini_close();
