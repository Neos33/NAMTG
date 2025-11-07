if(!other.reflected)
{
    with(other)
    {
        reflected = true;
        image_angle -= 135;
        direction -= 135;
    }
    targetScale += 0.1;
}

