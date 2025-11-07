if timeline == noone
{
    //instance_destroy();
    exit;   
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _timeline = timeline.timeline_index;
var _pos = timeline.timeline_position;

draw_text(32, 256, string_hash_to_newline("Timeline: " + timeline_get_name(_timeline)));
draw_text(32, 256 + 32, string_hash_to_newline("Time: " + string(_pos)));

