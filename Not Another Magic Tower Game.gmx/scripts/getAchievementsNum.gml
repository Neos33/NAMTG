var achNum;
achNum = 0;
for(i = 0; i < 300; i+=1)
{
    if(global.achievements[i])
    {
     achNum += 1;
    }
}
return achNum;
