event_inherited();
name = "Dark Lord";
image_speed = 1/8;

atk=280;
def=146;
tdPath = pathDarkLord;
spd = 0.5;
x = -32;
y = -32;

targetX[0]=176; targetY[0]=176;
targetX[1]=176; targetY[1]=368;
targetX[2]=432; targetY[2]=368;
targetX[3]=432; targetY[3]=176;
targetX[4]=560; targetY[4]=176;
targetX[5]=560; targetY[5]=48;

targetCount = 6;
currentTarget = 0;

sys = part_system_create();
part_system_depth(sys,1000);

fire = part_type_create();
part_type_sprite(fire,spr_particle_fire,0,0,1);
part_type_size(fire,2,3,-.01,0);
part_type_orientation(fire,85,95,2,0,0);
part_type_color3(fire,make_color_rgb(64,0,32),make_color_rgb(32,0,64),make_color_rgb(64,0,64));
part_type_alpha3(fire,.18,.72,0);
part_type_blend(fire,1);
part_type_direction(fire,85,95,0,0);
part_type_speed(fire,3,6,0,0);
part_type_life(fire,15,20);

emit = part_emitter_create(sys);
part_emitter_region(sys,emit,x-64,x+64,y-64,y+64,ps_shape_ellipse,ps_distr_gaussian);




inSkill = false;
crazy = false;
partStart = false;

fullHp = 0;
hpPer = 0;

