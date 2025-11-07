time = 0;
explodeAmmount1 = 0;
explodeSpd1 = 0;
explodeAmmount2 = 0;
explodeSpd2 = 0;
f1 = 0;
f2 = 0;
p = 0;

tempSign = 0;
p1 = 0;
blackOut = 0;

startX = 0;
startY = 0;
b = 0;

/// Room list
instance_create(0,0,obj_tlBlinkBlack);
currentStep = 0;
explodeSpd1 = 6;
explodeSpd2 = 7;
explodeAmmount1 = 36;
explodeAmmount2 = 25;
alarm[11] = 1;

rngRoomList = ds_list_create();
ds_list_add(rngRoomList,r_tl_dracula);
ds_list_add(rngRoomList,r_tl_giantBat);
ds_list_add(rngRoomList,r_tl_skeletonOrc);
ds_list_add(rngRoomList,r_tl_redKnight);
ds_list_add(rngRoomList,r_tl_swordMaster);
ds_list_add(rngRoomList,r_tl_blackDevilMagician);
ds_list_add(rngRoomList,r_tl_burningSlime);
ds_list_add(rngRoomList,r_tl_burningKnight);
ds_list_add(rngRoomList,r_tl_burningFasf);
ds_list_add(rngRoomList,r_tl_armoredSoldier);
ds_list_add(rngRoomList,r_tl_silverEvilSlime);
ds_list_add(rngRoomList,r_tl_goldEvilSlime);
ds_list_shuffle(rngRoomList);

/// Steps

//step = array_create(500);

step[0] = 1;    //Start Bullet
step[1] = 245;  //explode1
step[2] = 340; //explode2_1
step[3] = 350; //explode2_2
step[4] = 370; //explode2_3
step[5] = 470; //explode3_1
step[6] = 480; //explode3_2
step[7] = 500; //explode3_3
step[8] = 600; //explode4_1
step[9] = 610; //explode4_2
step[10] = 630; //explode4_3
step[11] = 750; //fireball
step[12] = 1150; //burst beam
step[13] = 1198; //white flash1
step[14] = 1207; //white flash2
step[15] = 1216; //white flash3
step[16] = 1125; //white flash4
step[17] = 1240; //destroy start part, init fire
step[18] = 1244; //battle start
step[19] = 1750; //fasf in
step[20] = 2020; //fasf up
step[21] = 2230; //dark hole
step[22] = 2370;  //view
step[23] = 2430;  //fade out
step[24] = 2480;  //change room
step[25] = 2500;  //small slime in
step[26] = 2600;  //red slime in
step[27] = 2700;  //black slime in
step[28] = 2800;  //slime king in
step[29] = 3010;  //skeleton in
step[30] = 3080;  //throw big bone
step[31] = 3330;  //bone gather
step[32] = 3480;  //intermediate guard in
step[33] = 3750;  //junior guard in
step[34] = 3980;  //mages + stone in
step[35] = 4105;  //megicians + steel in
step[36] = 4240;  //diao slime + veriation skeleton in
step[37] = 4500;  //yelow knight in
step[38] = 4600;  //orc mage in
step[39] = 4730;  //blue knight in
step[40] = 4820;  //orc swordsman in
step[41] = 4920;  //orc warrior in
step[42] = 5080;  //red bat in
step[43] = 5170;  //bat in
step[44] = 5220;  //small bat in
step[45] = 5437;  //white flash5
step[46] = 5446;  //white flash6
step[47] = 5455;  //white flash7
step[48] = 5464;  //white flash8
step[49] = 5500;  //random monster1
step[50] = 5750;  //random monster2
step[51] = 6000;  //random_monster3
step[52] = 6250;  //random monster4
step[53] = 6500;  //change to original room
step[54] = 7000;  //change to touhou ready room
step[55] = 7500;  //touhou start

//step[56] = 8000;  //test

if(global.part == 1)
{
    time = 2459;
    currentStep = 24;
}
else if(global.part == 2)
{
    time = 5400;
    currentStep = 45;
}

/// Particle
ps = part_system_create();
part_system_depth(ps,-50)

part1 = part_type_create();   //StartFire
part_type_shape(part1,pt_shape_line);
part_type_size(part1,1.50,2,0,0);
part_type_scale(part1,0.65,2.50);
part_type_color3(part1,16749459,33023,255);
part_type_alpha3(part1,0.04,0.06,0.07);
part_type_speed(part1,0.70,2.60,-0.02,0);
part_type_direction(part1,0,359,0,9);
part_type_gravity(part1,0,270);
part_type_orientation(part1,0,0,10,20,1);
part_type_blend(part1,1);
part_type_life(part1,40,50);

beam = part_type_create();
part_type_blend(beam,1);
part_type_color1(beam,make_color_rgb(255,128,64));
part_type_sprite(beam,sprBeam,0,0,0);
//sprite_set_alpha_from_sprite(sprBeam,sprBeam);
part_type_orientation(beam,0,360,0,0,0);
part_type_size(beam,0,0,0.5,1);

pt1_em1 = part_emitter_create(ps);
pt1_em2 = part_emitter_create(ps);
beam_em1 = part_emitter_create(ps);
beam_em2 = part_emitter_create(ps);


ps1 = part_system_create();
part_system_depth(ps1,-60)

partBGFire = part_type_create(); 

part_type_sprite(partBGFire,spr_particle_fire,0,0,1);
part_type_size(partBGFire,2,3,-.01,0);
part_type_orientation(partBGFire,0,360,2,0,0);
part_type_color3(partBGFire,c_orange,c_orange,c_red);
part_type_alpha3(partBGFire,.05,0.2,0);
part_type_blend(partBGFire,1);

part_type_direction(partBGFire,85,95,0,0);
part_type_speed(partBGFire,5,15,0,0);

part_type_life(partBGFire,25,35);

partBubble = part_type_create();
part_type_shape(partBubble,pt_shape_circle);
part_type_size(partBubble,0.10,0.30,0,0);
part_type_scale(partBubble,1,1);
part_type_color2(partBubble,make_color_rgb(107,87,173), c_white);//16777215,12632256);
part_type_alpha2(partBubble,1,0);
part_type_speed(partBubble,1,2,0.01,0);
part_type_direction(partBubble,80,100,0,0);
part_type_gravity(partBubble,0,270);
part_type_orientation(partBubble,0,0,0,0,1);
part_type_blend(partBubble,1);
part_type_life(partBubble,70,100);
bubbleEmitter = part_emitter_create(ps);
part_emitter_region(ps,bubbleEmitter,0,800,600,608,0,0);

bgFireEmitter1 = part_emitter_create(ps1);
part_emitter_region(ps1,bgFireEmitter1,-32,128,448,608,ps_shape_rectangle,ps_distr_linear);

bgFireEmitter2 = part_emitter_create(ps1);
part_emitter_region(ps1,bgFireEmitter2,672,832,448,608,ps_shape_rectangle,ps_distr_linear);

bgFireEmitter3 = part_emitter_create(ps1);
part_emitter_region(ps1,bgFireEmitter3,96,704,608,608,ps_shape_rectangle,ps_distr_linear);


/*bgFireDestroyer = part_destroyer_create(ps1);
part_destroyer_region(ps1, bgFireDestroyer, 96, 704, 0, 512, ps_shape_rectangle);



/* */
/*  */
