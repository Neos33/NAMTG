if(abs(player.x - x) < 10 && !triggered)
{
   triggered = true;
   global.inGallery = true;
   global.GalleryAtk = global.attack;
   global.GalleryDef = global.defense;
   global.GalleryHp = global.hp;
   global.attack = atk;
   global.defense = def;
   global.hp = hp;
   if(player.x > x)
   {
        global.galleryX = x + 32;
   }
   else
   {
        global.galleryX = x - 32;
   }
   global.galleryY = player.y;
   global.monsters[350] = 0;
   sprWidth = sprite_get_width(spr);
   sprHeight = sprite_get_height(spr);
   
   battleMonster = instance_create(player.x - sprWidth/2,player.y - sprHeight/2,obj);
   battleMonster.ind = 350;
   battleMonster.visible = false;
   global.combatIndex = 350;
}

