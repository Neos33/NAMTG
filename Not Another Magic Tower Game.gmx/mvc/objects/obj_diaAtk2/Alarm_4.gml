if count4<40
{
    //if(dd<0){
        //image_angle -= (360-curAngle)/40;
    //}
    //else{
        image_angle -= curAngle / 40;
    //}
    count4 += 1;
    alarm[4] = 1;
}
else{
    alarm[4] = 0;
    alarm[5] = 1;
}

