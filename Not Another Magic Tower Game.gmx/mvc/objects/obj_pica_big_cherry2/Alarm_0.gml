var rng=random(360);
var var0=4;
var var1=4;
var var2=12;
var var3=1;
var var4=obj_pica_cherry2;

var codis, sidis, aa;
for(var iii=0;iii<var0;iii+=1)
{
    codis[iii] = cos(degtorad(iii*360/var0*var3))
    sidis[iii] = sin(degtorad(iii*360/var0*var3))
    codis[iii+1] = cos(degtorad((iii+1)*360/var0*var3))
    sidis[iii+1] = sin(degtorad((iii+1)*360/var0*var3))
    for(var iij=0;iij<var1;iij+=1)
    {
        aa[iii,iij]=instance_create(x,y,var4)
        aa[iii,iij].sprite_index=sprite_index
        aa[iii,iij].direction =rng +point_direction(x,y,x+codis[iii]+(codis[iii+1]-codis[iii])*iij/var1,y-sidis[iii]-(sidis[iii+1]-sidis[iii])*iij/var1)
        aa[iii,iij].speed = var2 * point_distance(x,y,x+codis[iii]+(codis[iii+1]-codis[iii])*iij/var1,y-sidis[iii]-(sidis[iii+1]-sidis[iii])*iij/var1)
    }
}
instance_destroy()

