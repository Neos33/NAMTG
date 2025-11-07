if(p)
{
    with(p)
    {
        instance_destroy();
    }
}
save1 = instance_create(448,384,savePoint);
save1.image_alpha = 0;
save2 = instance_create(512,384,savePoint);
save2.image_alpha = 0;
up = instance_create(480,224,obj_upStairs2);
up.image_alpha = 0;
up.warpX = 464 + 17;
up.warpY = 192 + 23;
up.roomTo = r17F;
alpha = 0;
storyEnd = true;
player.frozen= false;

