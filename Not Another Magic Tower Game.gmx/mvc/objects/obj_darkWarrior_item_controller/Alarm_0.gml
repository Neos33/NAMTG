var cx = 208;
var cy = 16;
while(instance_position(cx - 16, cy - 16, block) || instance_position(cx - 16, cy - 16, obj_dwBombWall))
{
    var cxIndex = irandom_range(0,16);
    var cyIndex = irandom_range(0,16);
    cx = 240 + 32 * cxIndex;
    cy = 48 + 32 * cyIndex;
}
instance_create(cx, cy, obj_darkWarrior_item);

