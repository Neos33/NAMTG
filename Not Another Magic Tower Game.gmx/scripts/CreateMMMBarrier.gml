var dis, obj;
dis = argument0;
global.mmmGap = 150;
if(dis < 200)
{
    obj = choose(obj_mmm_barrier1, obj_mmm_barrier2, obj_mmm_barrier3, obj_mmm_barrier4, obj_mmm_barrier5, 
                 obj_mmm_barrier6, obj_mmm_barrier7, obj_mmm_barrier8, obj_mmm_barrier9, obj_mmm_barrier10,
                 obj_mmm_barrier11, obj_mmm_barrier12, obj_mmm_barrier13, obj_mmm_barrier14,obj_mmm_barrier15,
                 obj_mmm_barrier16);
}
else if(dis < 500)
{
    obj = choose(choose(obj_mmm_barrier1, obj_mmm_barrier3), choose(obj_mmm_barrier2 , obj_mmm_barrier4), 
                 choose(obj_mmm_barrier5, obj_mmm_barrier8), 
                 obj_mmm_barrier6, obj_mmm_barrier7,  obj_mmm_barrier9, obj_mmm_barrier10,
                 obj_mmm_barrier11, obj_mmm_barrier12, obj_mmm_barrier13, obj_mmm_barrier14,obj_mmm_barrier15,
                 obj_mmm_barrier16, obj_mmm_barrier17, obj_mmm_barrier18);

}
else
{
    obj = choose(choose(obj_mmm_barrier1, obj_mmm_barrier3), choose(obj_mmm_barrier2 , obj_mmm_barrier10), 
                 choose(obj_mmm_barrier4, obj_mmm_barrier14), choose(obj_mmm_barrier5, obj_mmm_barrier8), 
                 choose(obj_mmm_barrier6,obj_mmm_barrier9), choose(obj_mmm_barrier11, obj_mmm_barrier12), 
                 obj_mmm_barrier7, obj_mmm_barrier13,obj_mmm_barrier15,
                 obj_mmm_barrier16, obj_mmm_barrier17, obj_mmm_barrier18,obj_mmm_barrier19); //, obj_mmm_barrier20);
}


if(obj == obj_mmm_barrier1)
{   
    global.mmmGap = 100;
    global.mmmInterval = 350;
}
else if(obj == obj_mmm_barrier2)
{   
    global.mmmGap = 200;
    global.mmmInterval = 550;
}
else if(obj == obj_mmm_barrier3)
{   
    global.mmmGap = 150;
    global.mmmInterval = 450;
}
else if(obj == obj_mmm_barrier4)
{   
    global.mmmGap = 180;
    global.mmmInterval = 500;
}
else if(obj == obj_mmm_barrier5)
{
    global.mmmGap = 220;
    global.mmmInterval = 600;
}
else if(obj == obj_mmm_barrier6)
{
    global.mmmGap = 250;
    global.mmmInterval = 650;
}
else if(obj == obj_mmm_barrier7)
{
    global.mmmGap = 150;
    global.mmmInterval = 450;
}
else if(obj == obj_mmm_barrier8)
{
    global.mmmGap = 200;
    global.mmmInterval = 550;
}
else if(obj == obj_mmm_barrier9)
{
    global.mmmGap = 180;
    global.mmmInterval = 500;
}
else if(obj == obj_mmm_barrier10)
{
    global.mmmGap = 180;
    global.mmmInterval = 500;
}
else if(obj == obj_mmm_barrier11)
{
    global.mmmGap = 180;
    global.mmmInterval = 500;
}
else if(obj == obj_mmm_barrier12)
{
    global.mmmGap = 150;
    global.mmmInterval = 450;
}
else if(obj == obj_mmm_barrier13)
{
    global.mmmGap = 300;
    global.mmmInterval = 600;
}
else if(obj == obj_mmm_barrier14)
{
    global.mmmGap = 180;
    global.mmmInterval = 500;
}
else if(obj == obj_mmm_barrier15)
{
    global.mmmGap = 250;
    global.mmmInterval = 580;
}
else if(obj == obj_mmm_barrier16)
{
    global.mmmGap = 250;
    global.mmmInterval = 580;
}
else if(obj == obj_mmm_barrier17)
{
    global.mmmGap = 300;
    global.mmmInterval = 600;
}
else if(obj == obj_mmm_barrier18)
{
    global.mmmGap = 180;
    global.mmmInterval = 500;
}
else if(obj == obj_mmm_barrier19)
{
    global.mmmGap = 600;
    global.mmmInterval = 1080;
}
else if(obj == obj_mmm_barrier20)
{
    global.mmmGap = 500;
    global.mmmInterval = 900;
}


print("MMMFingers - Barrier spawned: ", object_get_name( obj));
instance_create(view_xview[0] + 400, view_yview[0] - global.mmmGap, obj);
