x1 = 256
x2 = 288

y1 = 192
y2 = 160

repeat(8){
instance_create(x1,160,obj_supfasfbullet3)
x1+=36
}

repeat(8){
instance_create(x2,448,obj_supfasfbullet3)
x2+=36
}

repeat(8){
instance_create(256,y1,obj_supfasfbullet3)
y1+=36
}

repeat(8){
instance_create(544,y2,obj_supfasfbullet3)
y2+=36
}

