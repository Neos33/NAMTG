           with(obj_15FGay1)
          {
            if(ind == 0)
            {
                b = instance_create(x, y, obj_ultimateEnergy_red);
                b.msg = "You've obtained the red energy crystal piece.";
            }
            else if(ind == 1)
            {
                b = instance_create(x, y, obj_ultimateEnergy_blue);
                b.msg = "You've obtained the blue energy crystal piece.";
            }
            b.targetX = x;
            b.targetY = y - 40;
            alarm[5] = 1;           
          }
           global.gayEndingStep = 0;
          onMesseging = true;

