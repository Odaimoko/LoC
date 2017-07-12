if(dead==1)return;

if (sprite_index == spr_camera){
	// active shooting time
	if (bullet_count_down_active >= 0){
		-- bullet_count_down_active;
		-- bullet_count_down;
		if (bullet_count_down <= 0){
			// shooting
			var theid = instance_create_layer(x,y,"bulletlayer",obj_dot_bullet);
			with(theid)
			{
				sprite_index = spr_dot_bullet;
				image_xscale = 0.3;
				image_yscale = 0.3;
			}
			// bullet count down for camera, reset countdown shooting
			bullet_count_down = 0;
		}
	}
	// slient time
	if ((bullet_count_down_slient >= 0) and (bullet_count_down_active <= 0)){
		--bullet_count_down_slient;
	}
	
	// rest bullet count down only both countdown are zero
	if ((bullet_count_down_active <= 0) and (bullet_count_down_slient <= 0)){
		// slient time and shooting time
		bullet_count_down_active = 120;
		bullet_count_down_slient = 60;
	}
}
else{
	// use default setting
	--bullet_count_down;
	var theid = instance_create_layer(x,y,"bulletlayer",obj_dot_bullet);
	var si = sprite_index;
	
	with(theid)
	{
		sprite_index = si;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
	bullet_count_down = bullet_count_set;
}