with(obj_customRushCards)
{
    if(ind == obj_customRushController.currentInd)
    {
        if(selected)
        {
            obj_galleryBrSelect.image_index = 1;
        }
        else
        {
            obj_galleryBrSelect.image_index = 0;
        }
    }
    indGap = ind - other.currentInd;
    ga = indGap*other.gapAngle;
    if(indGap > other.totalCount/2)
    {
        indGap -= other.totalCount;
    }
    else if(indGap < -other.totalCount/2)
    {
        indGap += other.totalCount;
    }
    scale = 0.2 + 0.8 * (1-abs(indGap)/other.totalCount*2);
    td = -10000-scale * 1000;
    ta = 0.2 + 0.8 * scale;
    tx = cx + other.hr * cos(degtorad(270+ga));
    ty = cy - other.vr * sin(degtorad(270+ga));
    sStep = (scale-image_xscale)/cStep;
    dStep = round((td-depth)/cStep);
    aStep = (ta-image_alpha)/cStep;
    xStep = (tx-x)/cStep;
    yStep = (ty-y)/cStep;
    bStep = cStep;
    moving = true;
    alarm[0] = 1;
}

