//check whether player is outside of the view

if(x < view_xview[argument0]){
  return true;
}
if(x > view_xview[argument0]+view_wview[argument0]){
  return true;
}
if(y < view_yview[argument0]){
  return true;
}
if(y > view_yview[argument0]+view_hview[argument0]){
  return true;
}
return false;
