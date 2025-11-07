myDepth = obj_3dController.rDepth;
gap = 0;
for(j = obj_3dController.rSprWidth / 2; j < obj_3dController.rHeight; j += obj_3dController.rSprWidth)
{
    gap += 6;
    shift = floor(gap / obj_3dController.rSprWidth) * obj_3dController.rSprWidth;
    for(i = obj_3dController.rSprWidth / 2 + shift; i < obj_3dController.rWidth - shift; i += obj_3dController.rSprWidth)
    {
        ce = instance_create(i,j, obj_3dCircleElement);
        ce.dep = myDepth;
    }
}

