startAngle = random_range(0,360);
if(type == 0)
{
    explodePolygon(x,y, choose(3,4),280,random_range(1,360),8,40,obj_faroStartBullet, spr_faroStartBullet, 0.3, true);
    /*for(i=0;i<12;i+=1)
    {
        b = instance_create(x,y,obj_faroStartBullet);
        b.speed = 6;
        b.direction = startAngle + i*30;
    }*/
}
else if(type == 1)
{
    for(i=0;i<10;i+=1)
    {
        /*explodePolygon(x,y, 4,200,0,8,10,obj_faroStartBullet1, spr_faroStartBullet, 0.3, true);
        with(obj_faroStartBullet1)
        {
            type = -1;
        }
        explodePolygon(x,y, 4,200,45,8,10,obj_faroStartBullet1, spr_faroStartBullet, 0.3, true);*/
        b1 = instance_create(x,y,obj_faroStartBullet1);
        b1.type = 1;
        b1.startAngle = startAngle + i*36;
        b2 = instance_create(x,y,obj_faroStartBullet1);
        b2.type = -1;
        b2.startAngle = startAngle + i*36;
    }
}
else if(type == 2)
{
    repeat(30)
    {
        b = instance_create(x,y,obj_faroStartBullet);
        b.direction = random_range(0,360);
        b.speed = random_range(4,8);
    }
    /*for(i=0;i<8;i+=1)
    {
        b1 = instance_create(x,y,obj_faroStartBullet2);
        b1.type = 1;
        b1.startAngle = startAngle + i*45;
        b2 = instance_create(x,y,obj_faroStartBullet2);
        b2.type = -1;
        b2.startAngle = startAngle + i*45;
    }*/
}

/* */
/*  */
