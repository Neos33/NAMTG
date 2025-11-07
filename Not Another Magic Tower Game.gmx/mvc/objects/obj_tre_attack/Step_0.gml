if !player_is_alive() 
{
    timeline_running=false
    //obj_cora_ef.timeline_running=false
    timeline_position=-1
    //obj_cora_ef.timeline_position=-1
    //set_automatic_draw(true)
}
    
/*    
if f  { obj_cora_ef.f  = true; f =  false }
if f2 { obj_cora_ef.f2 = true; f2 = false }
if d  { obj_cora_ef.d  = true; d =  false }
if d2 { obj_cora_ef.d2 = true; d2 = false }
*/
if(at1)
{
    t1+=1;
    if(t1=2)
    {
        var a=instance_create(random(800),-12,obj_tre_bullet);
        a.vspeed=random_range(4,9);
        a.sprite_index=spr_gboom;
        a.image_index=choose(0,1,2);
        a=instance_create(random(800),620,obj_tre_bullet);
        a.vspeed=-random_range(4,9);
        a.sprite_index=spr_gboom;
        a.image_index=choose(0,1,2);
        t1=0;
    }
}
if(at2)
{
    t2+=1;
    if(t2=3)
    {
        a=instance_create(-12,random(608),obj_tre_bullet);
        a.hspeed=random_range(4,9);
        a.sprite_index=spr_gboom;
        a.image_index=choose(0,1,2);
        a=instance_create(812,random(608),obj_tre_bullet);
        a.hspeed=-random_range(4,9);
        a.sprite_index=spr_gboom;
        a.image_index=choose(0,1,2);
        t2=0;
    }
}


/* */
/*  */
