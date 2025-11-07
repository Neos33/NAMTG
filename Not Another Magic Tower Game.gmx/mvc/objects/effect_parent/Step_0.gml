var a,i;

//if(keyboard_get_numlock())keyboard_set_numlock(off)

for(var i=0;i<global.flash_entity_amount;i+=1)
{
    if(global.flash_object[i]!=0)
    {
        a=global.flash_object[i]
        global.flash_time[i]-=1
        if(global.flash_time[i]=0)
        {
            global.flash_time[i]=global.flash_temptime[i]
            if instance_exists(a)
            {
                if(a.visible=1)
                {
                    a.visible=0
                }
                else
                {
                    a.visible=1
                    global.flash_count[i]-=1
                    if(global.flash_count[i]=0)
                    {
                        global.flash_object[i]=0
                        global.flash_count[i]=0
                        global.flash_time[i]=0
                        global.flash_temptime[i]=0
                        a.flash=0
                    }
                }
            }
        }
    }
}

for(var i=0;i<global.flash_entity_amount;i+=1){
    if(global.fade_out_object[i]!=0){
        a=global.fade_out_object[i];
        if global.fade_out_time[i]>1{
            a.image_alpha-=1/global.fade_out_time[i];
            with a{
                if image_alpha<=0{
                    global.fade_out_object[i]=0;
                    instance_destroy();
                }                
            }
            global.fade_out_time[i]-=1;
            
        }
    }
}

