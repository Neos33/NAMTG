global.menuPos = 0;
global.currentObj = obj_GDBlock2;
global.currentSpr = spr_GD_Block2;
global.dashboardWidth = 320;

blockOffset = 64;
spikeOffset = 164;
effectsOffset = 332;
transformerOffset = 500;

itemList = ds_list_create();
//blocks
ds_list_add(itemList, obj_designDashboardBlock1);
ds_list_add(itemList, obj_designDashboardBlock2);
ds_list_add(itemList, obj_designDashboardPlatform);
ds_list_add(itemList, obj_designDashboardCoin);
//spikes
ds_list_add(itemList, obj_designDashboardSpikeUp);
ds_list_add(itemList, obj_designDashboardSpikeDown);
ds_list_add(itemList, obj_designDashboardSpikeLeft);
ds_list_add(itemList, obj_designDashboardSpikeRight);
ds_list_add(itemList, obj_designDashboardFlatSpikeUp);
ds_list_add(itemList, obj_designDashboardFlatSpikeDown);
ds_list_add(itemList, obj_designDashboardFlatSpikeLeft);
ds_list_add(itemList, obj_designDashboardFlatSpikeRight);
ds_list_add(itemList, obj_designDashboardGroundSpikeUp);

//effects
ds_list_add(itemList, obj_designDashboardEffectAqua);
ds_list_add(itemList, obj_designDashboardEffect1);
ds_list_add(itemList, obj_designDashboardEffectBlock);
ds_list_add(itemList, obj_designDashboardEffectBlue);
ds_list_add(itemList, obj_designDashboardEffectPurple);
ds_list_add(itemList, obj_designDashboardEffectRed);
ds_list_add(itemList, obj_designDashboardEffectYellow);
ds_list_add(itemList, obj_designDashboardEffectGreen);
ds_list_add(itemList, obj_designDashboardEffectOrange);
ds_list_add(itemList, obj_designDashboardEffectGroundSpikeUp);
ds_list_add(itemList, obj_designDashboardEffectGroundSpikeUp1);

//transformers
ds_list_add(itemList, obj_designDashboardPlaneTransformer);
ds_list_add(itemList, obj_designDashboardNormalTransformer);
//ds_list_add(itemList, obj_designDashboardGround);

for(i = 0; i < ds_list_size(itemList); i+=1)
{
 instance_create(x,y,ds_list_find_value(itemList,i));
}


instance_create(x,y,obj_saveGDDesign);


