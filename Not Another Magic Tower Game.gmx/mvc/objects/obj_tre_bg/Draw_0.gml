if(bg==0){
    draw_background(bg_tre_1,0,0);
}
else if(bg>0 && bg<1){
    draw_background_ext(bg_tre_1,0,0,1,1,0,c_white,1-bg);
    draw_background_ext(bg_tre_2,0,0,1,1,0,c_white,bg);
}
else if(bg==1){
    draw_background(bg_tre_2,0,0);
}
else if(bg==2){
    draw_background(bg_tre_3,0,0);
    draw_set_color(c_white);
    for(var i=0;i<=2;i+=0.5){
        draw_roundrect(32-i,32-i,768+i,576+i,1);
    }
}

