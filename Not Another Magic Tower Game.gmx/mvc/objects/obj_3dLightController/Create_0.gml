//d3d_set_lighting(true);
//d3d_light_define_point(1,obj_3dKidGay.x,obj_3dKidGay.y,0,100,c_white);
//d3d_light_enable(1,true);

//for(i = 0; i < 3; i += 1)
//{
    //instance_create(obj_3dController.rWidth / 2, 458 - i * 150, obj_3dCeilLightElement);
    //instance_create(obj_3dController.rWidth / 2 - 96, 458 - i * 150, obj_3dCeilLightElement);
    //instance_create(obj_3dController.rWidth / 2 + 96, 458 - i * 150, obj_3dCeilLightElement);
    
    //instance_create(obj_3dController.rWidth / 2, 450 - i * 150, obj_3dFloorLightElement);
    //instance_create(obj_3dController.rWidth / 2 - 96, 458 - i * 150, obj_3dFloorLightElement);
    //instance_create(obj_3dController.rWidth / 2 + 96, 458 - i * 150, obj_3dFloorLightElement);
//}



instance_create(obj_3dController.rWidth / 2 - 96, 458 - 150, obj_3dCeilLightElement);
instance_create(obj_3dController.rWidth / 2 + 96, 458 - 150, obj_3dCeilLightElement);
instance_create(obj_3dController.rWidth / 2, 458, obj_3dCeilLightElement);
instance_create(obj_3dController.rWidth / 2, 458 - 2 * 150, obj_3dCeilLightElement);
instance_create(obj_3dController.rWidth / 2 - 2 * 96, 458 - 2 * 150, obj_3dCeilLightElement);
instance_create(obj_3dController.rWidth / 2 + 2 * 96, 458 - 2 * 150, obj_3dCeilLightElement);

instance_create(obj_3dController.rWidth / 2 - 96, 458 - 150, obj_3dFloorLightElement);
instance_create(obj_3dController.rWidth / 2 + 96, 458 - 150, obj_3dFloorLightElement);
instance_create(obj_3dController.rWidth / 2, 458, obj_3dFloorLightElement);
instance_create(obj_3dController.rWidth / 2, 458 - 2 * 150, obj_3dFloorLightElement);
instance_create(obj_3dController.rWidth / 2 - 2 * 96, 458 - 2 * 150, obj_3dFloorLightElement);
instance_create(obj_3dController.rWidth / 2 + 2 * 96, 458 - 2 * 150, obj_3dFloorLightElement);



