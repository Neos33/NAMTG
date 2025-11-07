sp = ds_list_find_value(spList, spIndex);
switch(sp)
{
    case "Fire" : blendColor = make_color_rgb(240,128,48); break;
    case "Water" : blendColor = make_color_rgb(104,144,240); break;
    case "Grass" : blendColor = make_color_rgb(120,200,80); break;
    case "Rock" : blendColor = make_color_rgb(184,160,56); break;
    case "Electric" : blendColor = make_color_rgb(248,208,48); break;
    case "Ghost" : blendColor = make_color_rgb(112,88,152); break;
    case "Psychic" : blendColor = make_color_rgb(248,88,136); break;
    default : blendColor = c_white;break;
}
alarm[11] = 1;

