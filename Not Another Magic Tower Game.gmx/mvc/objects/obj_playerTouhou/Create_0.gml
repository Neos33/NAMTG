//basic variable
image_speed = 0.2;  
maxSpeed = 6;
factor = 1;
//set the border region
Uborder = 32;
Dborder = 576;
Lborder = 208;
Rborder = 592;
//create the check object
alarm[0] = 1;

hint = instance_create(x,y-24,obj_finalTouhouHint);
hint.txt = "Hold 'SHIFT' to 'FOCUS'";



nowSpeed = 0;
slow = 0;
frozen = false;
shootCoolDown = 0;

