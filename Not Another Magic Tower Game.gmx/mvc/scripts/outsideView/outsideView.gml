//check whether player is outside of the view

if(x < __view_get( e__VW.XView, argument0 )){
  return true;
}
if(x > __view_get( e__VW.XView, argument0 )+__view_get( e__VW.WView, argument0 )){
  return true;
}
if(y < __view_get( e__VW.YView, argument0 )){
  return true;
}
if(y > __view_get( e__VW.YView, argument0 )+__view_get( e__VW.HView, argument0 )){
  return true;
}
return false;
