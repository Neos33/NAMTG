if(!targeted) exit;
with(obj_galleryBrCard)
{
    if(id != other.id)
    {
        dis = point_distance(x,y,other.x,other.y);
        if(other.minDis > dis)
        {
            other.minDis = dis;
            other.target = id;
        }
    }
}

target.image_blend = merge_color(c_red,c_white,0.5);

