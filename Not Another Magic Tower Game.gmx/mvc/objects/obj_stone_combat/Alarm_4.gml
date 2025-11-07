repeat(10)
{
    var aa=instance_create(random_range(0,400),80,obj_cherry);
    aa.sprite_index = spr_silverEvilSlimeRock;
    aa.image_xscale = 0.6;
    aa.image_yscale = 0.6;
    aa.image_speed = 1/8;
    aa.vspeed=choose(2,2.5,3)
    aa.gravity=0.1
}
repeat(10)
{
    var ab=instance_create(random_range(400,800),80,obj_cherry);
    ab.sprite_index = spr_silverEvilSlimeRock;
    ab.vspeed=choose(2,2.5,3)
    ab.image_xscale = 0.6;
    ab.image_yscale = 0.6;
    ab.image_speed = 1/8;
    ab.gravity=0.1
}

