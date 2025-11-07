if(alpha > 0)
{
    alpha -= 0.02;
    size += 0.05;
}
else
{
    alpha = 0.6;
    size = 0.5;
}
if(totalAngle > 0)
{
    startAngle -= stepAngle;
    totalAngle -= stepAngle;
    steps += 1;
    color = merge_color(c_green,c_red, steps/totalSteps);
}
else
{
    ds_queue_dequeue(obj_spaceController.queue);
    instance_destroy();
}

