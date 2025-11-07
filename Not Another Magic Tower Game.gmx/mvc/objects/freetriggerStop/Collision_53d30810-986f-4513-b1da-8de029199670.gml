if(other.y > self.y){
    other.x=x;
    other.y=y+32;
    other.speed=0;
}
if(other.y < self.y){
    other.x=x;
    other.y=y-32;
    other.speed=0;
}
if(other.x > self.x){
    other.x=x+32;
    other.y=y;
    other.speed=0;
}
if(other.x < self.x){
    other.x=x-32;
    other.y=y;
    other.speed=0;
}


