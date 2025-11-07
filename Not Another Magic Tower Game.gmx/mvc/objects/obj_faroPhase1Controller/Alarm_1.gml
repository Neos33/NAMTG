with(obj_faroBlack)
{
    instance_destroy();
}
with(obj_faroBlinkBlack)
{
    instance_destroy();
}
if(mode == 0)
{
    with(obj_faro_combat)
    {
        image_alpha = 0.8;
    }
}
with(obj_faroMagicCircle)
{
    event_user(0);
}
with(obj_faroStartCircle)
{
    event_user(1);
}
blink = instance_create(0,0,obj_faroWhite1);
blink.image_alpha = 1;
blink.stepAlpha = 0.01;

