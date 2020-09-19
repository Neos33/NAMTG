//invert gravity

if(global.grav=1){
global.image_xscale=image_xscale
instance_create(x,y-4,player2)
instance_destroy()
}


//player die

if place_meeting(x,y,playerKiller){
    if(global.isAddMsg)
    {
        with(global.msgController)
        {
            msg = "Oh my god, kid jumped on a spike. Kid's asshole is broken.";
            event_user(0);
        }
    }
    killPlayer();
}
