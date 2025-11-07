var i;

for(i = 1; i <= 3; i += 1){
  draw_set_color(c_black)
  draw_set_halign(fa_left)
  draw_set_font(font40);
  draw_text(x+(i-1)*239,y,string_hash_to_newline(str[i]));
  draw_set_font(font12);
  draw_text(x+(i-1)*239+10,y+70,string_hash_to_newline("death:"+string(global.death[i])));
  
global.hour[i]=global.time[i] div 3600;
global.atime[i]=global.time[i] mod 3600;
global.muni[i]=global.atime[i] div 60;
global.sec[i]=global.atime[i] mod 60;

draw_text(x+(i-1)*239+10,y+90,string_hash_to_newline("time:"+string(global.hour[i])+":"+string(global.muni[i])+":"+string(global.sec[i])));

draw_set_font(font12);
draw_set_halign(fa_center)

if(global.difselect=1){

 if(difname=-1) draw_text(x + (global.savenum-1)*239 + 65, y+49,string_hash_to_newline("< Load game >"));
    if(difname=0) draw_text(x + (global.savenum-1)*239 + 65, y+49,string_hash_to_newline("< Medium >"));
    if(difname=1) draw_text(x + (global.savenum-1)*239 + 65, y+49,string_hash_to_newline("< Hard >"));
    if(difname=2) draw_text(x + (global.savenum-1)*239 + 65, y+49,string_hash_to_newline("< Very Hard >"));
    if(difname=3) draw_text(x + (global.savenum-1)*239 + 65, y+49,string_hash_to_newline("< Impossible >"));
    }
draw_set_color(c_black)
if(file_exists("save"+string(i)) == true){

if(global.difselect=0 || (global.difselect=1 && i!=global.savenum)){
  if(global.difficulty[i]=0){draw_text(x+(i-1)*239+65,y+49,string_hash_to_newline("Midium"))}
  if(global.difficulty[i]=1){draw_text(x+(i-1)*239+65,y+49,string_hash_to_newline("Hard"))}
  if(global.difficulty[i]=2){draw_text(x+(i-1)*239+65,y+49,string_hash_to_newline("Very Hard"))}
  if(global.difficulty[i]=3){draw_text(x+(i-1)*239+65,y+49,string_hash_to_newline("Impossible"))}
}
   
    draw_set_font(font24bold);  
    
  if(global.clear[i]=1){draw_text(x+(i-1)*239+65,y+215,string_hash_to_newline("Clear!!"))}
  
  
  //�Ή������{�X���|���ꂽ�Ƃ��Ƀ��j���[�ɕ\�������A�C�R����w�肵�܂�
  //bossicon1-8�Ƃ������O�̃X�v���C�g����ꂼ�����Ă�������
  //bossitem�Ɠ����ł�������Ă�����ł����A
  //�����ݒ�ł̓T���v���~�N�̃A�C�e����bossicon1�Ɏw�肳��Ă��܂��̂�
  //�~�N�A�C�e���̃X�v���C�g����ς��Ă����Ă�������
  if(global.boss1[i]=1){draw_sprite(bossicon1,-1,x+(i-1)*239+0,y+128)}
  if(global.boss2[i]=1){draw_sprite(bossicon2,-1,x+(i-1)*239+32,y+128)}
  if(global.boss3[i]=1){draw_sprite(bossicon3,-1,x+(i-1)*239+64,y+128)}
  if(global.boss4[i]=1){draw_sprite(bossicon4,-1,x+(i-1)*239+96,y+128)}
  if(global.boss5[i]=1){draw_sprite(bossicon5,-1,x+(i-1)*239+0,y+160)}
  if(global.boss6[i]=1){draw_sprite(bossicon6,-1,x+(i-1)*239+32,y+160)}
  if(global.boss7[i]=1){draw_sprite(bossicon7,-1,x+(i-1)*239+64,y+160)}
  if(global.boss8[i]=1){draw_sprite(bossicon8,-1,x+(i-1)*239+96,y+160)}
  
}



    if(i == select){
    draw_sprite(sprCherry,-1,x+(i-1)*239+5,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+25,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+45,y+310);
    draw_sprite(sprPlayerIdle,-1,x+(i-1)*239+65,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+85,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+105,y+310);
    draw_sprite(sprCherry,-1,x+(i-1)*239+125,y+310);
  }
}

