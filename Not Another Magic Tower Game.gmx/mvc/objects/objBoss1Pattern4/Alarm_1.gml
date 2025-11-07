d=random(360);
var ind=irandom(6);
var arg0 = 6;   
var arg1 = 0;   
var arg2 = 0;   
var arg3 = x;   
var arg4 = y;   
var arg5 = d;
var arg6 = objBoss1Bullet5;   
var arg7 = 4;   
var arg8 = 8+global.phase;   
var arg9 = 1;   
var arg10 = 7;

if(arg0==0)
    arg0 = 1;  
if(arg1==0)
    arg1 = 1;
if(arg2==0)
    arg2 = 1;  
if(arg7==0)
    arg7 = 1;

i = 0;   
d = 0;   
t = 0;   
P_d = 360/arg0*arg7;                       
                     
// instance_code                   
repeat(arg0) 
{ 
    ins_d = d+arg5;
    P = point_distance(arg3+arg1*dcos(ins_d) , arg4-arg2*dsin(ins_d) , 
    arg3+arg1*dcos(ins_d+P_d) , arg4-arg2*dsin(ins_d+P_d));
    
    D = point_direction(arg3+arg1*dcos(ins_d), arg4-arg2*dsin(ins_d) ,
    arg3+arg1*dcos(ins_d+P_d), arg4-arg2*dsin(ins_d+P_d));
                                           
    repeat(arg8+1) 
    { 
        ins_x = arg3+arg1*dcos(ins_d)+(lengthdir_x(P, D) / (arg8+1))*t;
        ins_y = arg4-arg2*dsin(ins_d)+(lengthdir_y(P, D) / (arg8+1))*t;
                               
        switch(arg9) 
        {  
            case 0: 
                nk=instance_create(ins_x , ins_y , arg6);
                nk.N=1;
                //nk.image_index=argument11;  
                nk.image_index=0;  
            break
            
            case 1: 
                nk = instance_create(ins_x , ins_y , arg6);
                nk.direction = point_direction(arg3 , arg4 , ins_x , ins_y);
                nk.speed = arg10/arg1*point_distance(ins_x , ins_y , arg3 , arg4);
                nk.N=1;
                nk.image_index=ind; 
            break;
        }
        t += 1;
    }
    t = 0;  
    d += 360/arg0;
}
instance_destroy();

