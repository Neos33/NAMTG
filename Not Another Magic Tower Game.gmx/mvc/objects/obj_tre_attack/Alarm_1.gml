var __b__;
__b__ = action_if_variable(debug_mode, 0, 0);
if __b__
{
{
action_timeline_set(tl_trebole, 0, 0, 0);
}
}
else
{
{
action_timeline_set(tl_trebole, 1282, 0, 0);
if(!instance_exists(obj_tre_at1)){
    instance_create(400,304,obj_tre_at1);
}

}
}
