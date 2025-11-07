
currentHeight = startY;
draw_set_alpha(1);
draw_set_color(c_silver);
for(section = 0; section < totalSections; section += 1)
{
    event_user(evtInd[section]);
}
//draw_text(32,32,string(640-startY));



draw_set_color(c_white);

