var a,i,j,dir,n,v,vv,dd,ee,ff,k; //var锟斤拷使锟斤拷锟斤拷锟饺でわ拷锟轿ワ拷锟斤拷锟斤拷抓锟斤拷冥韦撙锟绞癸拷锟斤拷锟斤拷锟斤拷锟斤拷x

//锟斤拷锟斤拷韦锟斤拷锟斤拷螔锟缴拷锟侥伙拷违锟斤拷锟斤拷锟阶トでわ拷锟斤拷Script锟节わ拷锟斤拷前"star"锟斤拷锟斤拷锟狡わ拷锟斤拷锟斤拷锟斤拷锟斤拷
//锟斤拷芒锟角にわ拷锟斤拷锟斤拷锟斤拷锟较は僕锟斤拷"polygon"锟斤拷锟斤拷锟斤拷抓趣锟斤拷锟斤拷皮锟斤拷锟斤拷锟斤拷锟斤拷锟?
//锟斤拷使锟斤拷锟斤拷锟斤拷
//锟斤拷
//锟杰ワ拷锟轿ワ拷锟斤拷`锟斤拷浈匡拷锟斤拷锟介イ锟斤拷恕锟?
//star(0,5,4,deliciousFruit,90)
//锟饺わ拷锟斤拷取锟?
//一锟絰锟斤拷deliciousFruit锟轿傦拷锟斤拷锟斤拷4锟斤拷锟轿☆拡散锟斤拷
//锟角わ拷頂点部锟斤拷锟劫度わ拷5锟斤拷
//頂碉拷锟斤拷锟斤拷敕斤拷锟斤拷90锟饺なわ拷蓼锟斤拷锟斤拷锟斤拷颏锟?

//1锟斤拷目锟斤拷锟侥匡拷锟斤拷锟缴拷扦锟斤拷巍锟?锟角☆。1锟斤拷一锟絇锟斤拷锟斤拷锟斤拷锟斤拷(锟斤拷芒锟斤拷)锟斤拷
//2锟斤拷目锟斤拷锟侥匡拷锟斤拷俣锟?
//3锟斤拷目锟斤拷锟侥匡拷锟揭伙拷x锟轿ワ拷锟街ワ拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷3锟斤拷锟斤拷(锟斤拷芒锟角なわ拷4锟斤拷锟斤拷)
//4锟斤拷目锟斤拷锟侥匡拷锟斤拷锟斤拷嗓锟斤拷毳拷芝锟斤拷锟斤拷锟斤拷锟斤拷锟?
//5锟斤拷目锟斤拷锟侥匡拷锟巾數锟轿凤拷锟斤拷锟絆锟斤拷锟斤拷"-2"锟斤拷锟皆機锟窖わ拷锟斤拷"-1"锟角ワ拷锟斤拷锟洁。锟斤拷锟轿傦拷锟绞わ拷锟斤拷锟斤拷锟斤拷锟斤拷锟角度にわ拷锟斤拷锟睫わ拷锟斤拷

n = argument2-1

if(argument4==-2){dir=point_direction(x,y,player.x,player.y)}
else if(argument4==-1){dir=random(360)}
else{dir=argument4}



for(j=1;j<=5;j+=1;){ //锟斤拷锟街る部锟街わ拷for锟角★拷锟斤拷锟斤拷锟皆わ拷锟斤拷锟矫わ拷锟斤拷2*5锟斤拷锟矫トでわ拷搿?
a=instance_create(x,y,argument3)
v=argument1
dd = cos(degtorad(18))
ee = cos(degtorad(36))
ff = cos(degtorad(54))
k = (1+sqrt(5))*ff*v/(ee+(1+sqrt(5))*ff*dd) //锟斤拷芒锟角の黄斤拷锟斤拷胜锟斤拷锟斤拷盲锟斤拷锟揭伙拷x锟斤拷锟絃锟斤拷锟斤拷锟?
a.speed=argument1
a.direction=dir
a.image_index=choose(argument5,argument6);
for(i=1;i<=n;i+=1;){
    a=instance_create(x,y,argument3) //锟睫わ拷锟斤拷锟絩計锟截わ拷趣锟斤拷锟?
    a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*dd))//锟斤拷锟揭讹拷锟斤拷
    vv=a.speed
    a.image_index=choose(argument5,argument6);
    a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))))//锟斤拷锟揭讹拷锟斤拷锟絘rccos()锟斤拷()锟节わ拷锟斤拷欷匡拷锟斤拷藢锟斤拷辘癸拷锟絚os锟轿角度わ拷radian锟絞位锟角筹拷锟斤拷
    b=instance_create(x,y,argument3) //锟紸锟斤拷锟狡時計锟截わ拷锟?
    b.speed=a.speed
    b.direction=dir-radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
    b.image_index=choose(argument5,argument6);
    if(i==n-1){
        dir += 72
    }
}
if j==1{
    if argument0==1{
        polygon_ii(5,vv,argument2-1,argument3,a.direction,argument5,argument6) //锟斤拷锟节诧拷锟斤拷锟斤拷锟斤拷螔锟缴拷锟斤拷锟斤拷锟矫拷扦锟?一锟絰锟斤拷锟斤拷锟斤拷锟劫わ拷锟絧锟介し锟狡まわ拷
    }
}
}
