if(dead==1||can_shoot==0)return;

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
			
			
		
		
				if(random_range(0,10) <=3)
				{
					if(sprite_index == spr_music)
						str_swear = "Chrome Maza Farka! How dare you play MP3?"
					if(sprite_index == spr_picture)
						str_swear = "Chrome Maza Farka! PNG is MINE!!!!"
					if(sprite_index == spr_camera)
						str_swear = "Chrome Maza Farka! MP4 is polluted by you!!!!"
				} else if(random_range(0,10) > 5)
				{
					if(sprite_index == spr_music)
						str_swear = "Leave my MP3 alone!!!"
					if(sprite_index == spr_picture)
						str_swear = "JPG is not your girl!!!!"
					if(sprite_index == spr_camera)
						str_swear = "MP4 will go nowhere by in my CHEST!!!!"
				} else {
	
					if(sprite_index == spr_music)
						str_swear = "MUSIC can't get away from ME!!!"
					if(sprite_index == spr_picture)
						str_swear = "You are not GIF's MR RIGHT"
					if(sprite_index == spr_camera)
						str_swear = "VIDEO occupies everywhere in my heart!!"
	
				}
		
		
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
	
	// shoot once
	if (bullet_count_down <= 0){
		var theid = instance_create_layer(x,y,"bulletlayer",obj_dot_bullet);
		var si = sprite_index;
	
		with(theid)
		{
			sprite_index = si;
			image_xscale = 0.3;
			image_yscale = 0.3;
		}
		
		
		if(random_range(0,10) <=3)
		{
			if(sprite_index == spr_music)
				str_swear = "Chrome Maza Farka! How dare you play MP3?"
			if(sprite_index == spr_picture)
				str_swear = "Chrome Maza Farka! PNG is MINE!!!!"
			if(sprite_index == spr_camera)
				str_swear = "Chrome Maza Farka! MP4 is polluted by you!!!!"
		} else if(random_range(0,10) > 5)
		{
			if(sprite_index == spr_music)
				str_swear = "Leave my MP3 alone!!!"
			if(sprite_index == spr_picture)
				str_swear = "JPG is not your girl!!!!"
			if(sprite_index == spr_camera)
				str_swear = "MP4 will go nowhere by in my CHEST!!!!"
		} else {
	
			if(sprite_index == spr_music)
				str_swear = "MUSIC can't get away from ME!!!"
			if(sprite_index == spr_picture)
				str_swear = "You are not GIF's MR RIGHT"
			if(sprite_index == spr_camera)
				str_swear = "VIDEO occupies everywhere in my heart!!"
	
		}
		
		
		bullet_count_down = bullet_count_set;
	}
}