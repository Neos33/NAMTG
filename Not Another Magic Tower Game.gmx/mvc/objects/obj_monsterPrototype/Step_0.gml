if(global.attack <= def)
{
    status = 2;
}
else
{
    if(global.defense >= atk)
    {
        status = 0;
    }
    else
    {
        status = 1;
    }
}

if(!place_meeting(x,y,obj_dynamiteInUse))
{
    image_blend = c_white;   
}
else
{
    image_blend = merge_color(c_white, c_red, 0.7);
    obj_dynamiteInUse.target = id; 
}

