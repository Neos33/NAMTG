if(global.lite=0){
for(i = 1; i <= 3; i += 1){
if(global.a[i]=0){
global.savenum=i
if(file_exists("save"+string(i)) == true){
saveExe();
global.difficulty[i]=global.difficulty
global.clear[i]=global.clear
global.boss1[i]=global.boss[1]
global.boss2[i]=global.boss[2]
global.boss3[i]=global.boss[3]
global.boss4[i]=global.boss[4]
global.boss5[i]=global.boss[5]
global.boss6[i]=global.boss[6]
global.boss7[i]=global.boss[7]
global.boss8[i]=global.boss[8]
}
global.a[i]=1
global.music=0
room_goto(rTitle)
}
}
}
for(i=1;i<=8;i+=1){
global.boss[i]=0
}
global.difficulty=3
global.clear=0
global.music=0

