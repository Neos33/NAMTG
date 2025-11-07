if(!crazy)
{
    var skill = choose(1,2,3);
}
else
{
    if(instance_exists(obj_darkLordDark))
    {
         skill = choose(1,2,3,4);
    }
    else
    {
        skill = choose(1,2,3,4,5);
    }
}
switch(skill)
{
    case 1: instance_create(0,0,obj_dlSkill1Controller);break;
    case 2: instance_create(0,0,obj_dlSkill2Controller);break;
    case 3: instance_create(0,0,obj_dlSkill3Controller);break;
    case 4: instance_create(0,0,obj_dlSkill4Controller);break;
    case 5: instance_create(0,0,obj_dlSkill5Controller);break;
    default: exit;
}
speed = 0;

