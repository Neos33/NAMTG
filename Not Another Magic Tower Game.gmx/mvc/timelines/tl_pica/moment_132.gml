with obj_pica_big_cherry2 {
x=400+random_range(20,-20);
y=100+random_range(20,-20)}

with obj_pica_cherry2 {
x=400+random_range(20,-20);
y=100+random_range(20,-20)}

for(var i=0;i<2;i+=1){
    a=instance_create(400,100,obj_pica);
    a.dir=i*180;
}

