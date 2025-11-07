if(bounce){
    if(x + hspeed + 50 > room_width || x + hspeed - 50 < 0){
        hspeed = -hspeed;
    }
    if(y + vspeed + 50 > room_height || y + vspeed - 50 < 0){
        vspeed = -vspeed;
    }
}

