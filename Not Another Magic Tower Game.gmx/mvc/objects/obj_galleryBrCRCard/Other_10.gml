currentInd = ds_list_find_index(global.csOrder[global.ChallengeSetIndex], image_index);
targetInd = ds_list_find_index(global.csOrder[global.ChallengeSetIndex], target.image_index);
pInd = target.ind;
target.ind = ind;
ind = pInd;
px = target.x;
py = target.y;
target.x = ox; 
target.y = oy;
target.ox = target.x;
target.oy = target.y;
x = px;
y = py;
ox = x;
oy = y;
ds_list_replace(global.csOrder[global.ChallengeSetIndex], currentInd, target.image_index);
ds_list_replace(global.csOrder[global.ChallengeSetIndex], targetInd, image_index);
target = noone;

