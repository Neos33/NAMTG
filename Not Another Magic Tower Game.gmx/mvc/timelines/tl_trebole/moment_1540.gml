for(i=0;i<2;i+=1){
    for(j=0;j<3;j+=1){
        a=instance_create(x,y,obj_tre_wb);
        a.pat = 1;
        count += 1;
        a.shadow = 1;
        a.stt = 2;
        a.ssspd = 0.25/10;
        a.dir = 60*count;
        a.speed = 6;
        a.ddir = 60*count;
        a.image_index = j*3+random(4);
        a.dirspd = fpb/6/8;
        a.alarm[3] = i*10+1;
        a.i=i;
        a.j=j;
        a.c4 = 60*count;
        a.alarm[4] = 1;
    }
}

