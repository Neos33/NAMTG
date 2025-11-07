var targetDirection = point_direction(x,y,400,304);//player.x,player.y);
if(direction != targetDirection){
    turn_towards_direction(targetDirection,angle_difference(direction,targetDirection)/80);
}
cooldown -= 1;
if(cooldown > 0){
    alarm[4] = 1; 
}

