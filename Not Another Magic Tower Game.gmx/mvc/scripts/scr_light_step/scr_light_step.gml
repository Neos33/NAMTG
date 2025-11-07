if(point_distance(prex,prey,x,y)>1)
{
    for(i=l-1;i>0;i-=1;)
    {
      lightx[i]=lightx[i-1];
      lighty[i]=lighty[i-1];
    }

    lightx[0]=x;
    lighty[0]=y;
}

prex = x;
prey = y;
