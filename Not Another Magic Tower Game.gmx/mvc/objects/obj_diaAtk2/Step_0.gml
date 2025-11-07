if(die) exit;
if(active)
{
    if(point_distance(x,y,obj_diadiamond.x,obj_diadiamond.y)<64)
    {
        vspeed -= 0.8;
        if(ttt == 2){
            var a=instance_create(x,y,obj_diaShadow);
            a.sprite_index=spr_diaShadow;
            ttt = 0;
        }
        ttt += 1;
        if(y<-32){
            with(obj_diadiamond)instance_destroy();
            die = true;
            //instance_destroy();
        }   
    }
}
if(ttt == 2){
    a=instance_create(x,y,obj_diaShadow);
    a.sprite_index=spr_diaShadow;
    a.depth = depth + 1;
    ttt = 0;
}
ttt += 1;

