x = 400 + lengthdir_x(100,dir_x);
y = 150 + abs(lengthdir_y(50,dir_y));
dir_x+=n0;
dir_y+=n0;
n += nn;
nn += 0.005;
t+=1;
dd+=n;
if t mod 12 == 0
{
    for(var j=0;j<4;j+=1)
    {
        for(var i=0;i<3;i+=1)
        {
            var a=instance_create(x,y,obj_finalDiamanteF0);
            a.dd=90*j+point_direction(400,-100,x,y);//dd+t*2;
            a.image_index=ind;
            a.spd=3+2*i
            a.ind = j*3+i;
        }
    }
}

