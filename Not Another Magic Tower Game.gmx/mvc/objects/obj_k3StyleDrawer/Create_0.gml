gap = 64;
offset = 0;

altEffect = instance_create(0,0,obj_galleryStyleDrawer);
altEffect.color = color;
altEffect.dimension = 8;
with(altEffect)
{
    event_user(0);
}
instance_destroy();


color = c_white;

