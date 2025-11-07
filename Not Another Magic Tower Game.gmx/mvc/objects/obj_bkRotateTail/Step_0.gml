image_xscale += 0.005;
image_yscale += 0.005;
rSpd += 0.2 - 0.1 * obj_burningKnight_combat.hp / obj_burningKnight_combat.oHP;
r += 10 - 5 * obj_burningKnight_combat.hp / obj_burningKnight_combat.oHP;
angle += rDir * rSpd;

x = ox + r * cos(degtorad(angle));
y = oy - r * sin(degtorad(angle));

//oy += obj_bkSpdController.blockSpd;
if(r > 600)
{
    instance_destroy();
}

