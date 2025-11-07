factor = 0;
proceed = true;
p1 = false;
p2 = false;
count = 0;
times += 1;
if(times mod 2 == 0 && source >= minW && source <= maxW && source >= minH && source <= maxH)
{
    instance_create(source,source,obj_tlDWTarget);
    factor += 1;
}
while(proceed)
{
    var x1 = source - gap * (times mod 2) - gap * 2 * factor;
    var y1 = source + gap * (times mod 2) + gap * 2 * factor;
    var x2 = source + gap * (times mod 2) + gap * 2 * factor;
    var y2 = source - gap * (times mod 2) - gap * 2 * factor;
    if(x1 >= minW && x1 <= maxW && y1 >= minH && y1 <= maxH)
    {
        instance_create(x1,y1,obj_tlDWTarget);
        p1 = true;
    }
    if(x2 >= minW && x2 <= maxW && y2 >= minH && y2 <= maxH)
    {
        instance_create(x2,y2,obj_tlDWTarget);
        p2 = true;
    }
    if(p1 || p2)
    {
        factor += 1;
        count += 1;
        p1 = false;
        p2 = false;
    }
    else
    {
        proceed = false;
    }
}
if(count > 0)
{
    source += gap;
    alarm[3] = interval;
}
else
    instance_create(maxW,maxH,obj_tlDWTarget);


