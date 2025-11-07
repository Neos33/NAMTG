//drawAmmount(x, y, ammount, alpha);
drawX = argument0;
drawY = argument1;
num = argument2;
alp = argument3;
xs = argument4;
ys = argument5;

var l, tempNum;
l = 0;
if(num >= 1000)
{
    pppp = floor(num / 1000);
    tempNum = num mod 1000;
    num = tempNum;
    l = 4;
}
if(num >= 100)
{
    ppp = floor(num / 100);
    tempNum = num mod 100;
    num = tempNum;
    if(l == 0) l = 3;
}
if(num >= 10)
{
    pp = floor(num / 10);
    tempNum = num mod 10;
    num = tempNum;
    if(l == 0) l = 2;
}
if(num > 0 || l > 0)
{
    p = num;
    if(l == 0) l = 1;
}

if(l > 0)
{
    if(l == 4)
    {
        draw_sprite_ext(spr_AccountText, 10, x - l / 2 * 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, pppp, x - l / 2 * 18 + 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, ppp, x - l / 2 * 18 + 18 * 2, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, pp, x - l / 2 * 18 + 18 * 3, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, p, x - l / 2 * 18 + 18 * 4, y - 10, xs, ys, 0, c_white, alp);
    }
    if(l == 3)
    {
        draw_sprite_ext(spr_AccountText, 10, x - l / 2 * 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, ppp, x - l / 2 * 18 + 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, pp, x - l / 2 * 18 + 18 * 2, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, p, x - l / 2 * 18 + 18 * 3, y - 10, xs, ys, 0, c_white, alp);
    }
    else if(l == 2)
    {
        draw_sprite_ext(spr_AccountText, 10, x - l / 2 * 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, pp, x - l / 2 * 18 + 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, p, x - l / 2 * 18 + 18 * 2, y - 10, xs, ys, 0, c_white, alp);
    }
    else
    {
        draw_sprite_ext(spr_AccountText, 10, x - l / 2 * 18, y - 10, xs, ys, 0, c_white, alp);
        draw_sprite_ext(spr_AccountText, p, x - l / 2 * 18 + 18, y - 10, xs, ys, 0, c_white, alp);
    }
}
