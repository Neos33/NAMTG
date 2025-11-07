image_angle += 5;
if timer < 500{
    if(timer mod 3 == 0){
        event_user(0);
    }
}
else if(timer < 1000){
    if(timer mod 50 == 0){
        event_user(1);
    }
    if(timer mod 50 == 25){
        event_user(2);
    }
}
else{
    if(timer mod 50 == 0){
        event_user(1);
    }
    if(timer mod 50 == 25){
        event_user(2);
    }
    var tempTimer = 6-floor((timer-2000)/250);
    if(tempTimer > 0)
    {
        if(timer mod tempTimer == 0){
            event_user(3);
        }
    }
    else
    {
        event_user(3);
    }
}
if timer == 250{
    event_user(4);
}
timer+=1;

if(scale < 1)
{
    scale += 0.02;
    image_xscale = scale;
    image_yscale = scale;
}

