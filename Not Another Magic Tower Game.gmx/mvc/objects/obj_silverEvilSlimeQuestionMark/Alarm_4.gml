if(image_xscale > 0)
{
    image_xscale -= 0.05;
    image_yscale -= 0.05;
    alarm[4] = 1;
}
else
{
    instance_change(obj_pokemonSpecies, true)
}

