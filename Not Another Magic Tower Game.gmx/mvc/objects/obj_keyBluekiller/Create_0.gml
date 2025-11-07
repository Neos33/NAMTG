action_inherited();
type = choose(-1,0,1)
if(type >= 0)
{
    speed=random_range(5,9);
    direction=random_range(0,180)
}
else
{
    speed=random_range(1,5);
    direction=random_range(180,359)
}
gravity=0.1;

