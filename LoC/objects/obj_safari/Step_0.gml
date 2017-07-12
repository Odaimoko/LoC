/// @description Insert description here
// You can write your code in this editor

// gravity part

if(dead==0){
	if place_free(x, y+1){
	   gravity = 0.5; 
	}
	else{
	   gravity = 0;
	}

	if vspeed>10{vspeed=10;}


	// shooting part
	if (bullet_count_down_active >= 0){
		-- bullet_count_down_active;
		-- bullet_count_down;
		if (bullet_count_down <= 0){
			// shooting
			var theid = instance_create_layer(x,y,"bulletlayer",obj_safari_bullet);
			// bullet count down for camera, reset countdown shooting
			bullet_count_down = bullet_count_set;
		}
	}
	// slient time
	if ((bullet_count_down_slient >= 0) and (bullet_count_down_active <= 0)){
		--bullet_count_down_slient;
	}
	
	// rest bullet count down only both countdown are zero
	if ((bullet_count_down_active <= 0) and (bullet_count_down_slient <= 0)){
		// slient time and shooting time
		bullet_count_down_active = bullet_count_down_active_set;
		bullet_count_down_slient = bullet_count_down_slient_set;
	}
	

	// move around
	// time to change direction
	count_down = count_down - 1;
	if (count_down <= 0){
		if (random_range(-8,8) < 0){ direct = 1;}
		else{ direct = 0;}
	}

	if (instance_exists(obj_chrome)){
		// if too close
		if ((distance_to_object(obj_chrome) < 100) and (obj_chrome.x > x)){
			direct = 0;
		}
		if ((distance_to_object(obj_chrome) < 100) and (obj_chrome.x < x)){
			direct = 1;
		}
	
		// if too away
		if ((distance_to_object(obj_chrome) > 700) and (obj_chrome.x > x)){
			direct = 1;
		}
		if ((distance_to_object(obj_chrome) > 700) and (obj_chrome.x < x)){
			direct = 0;
		}
	
		// if going to out of screen
		if (x > room_width) direct = 0;
		if (x < 0) direct = 1;
		if (y > room_height) jump_count_down = jump_count_set;
	
		// move the object
		if (direct == 0){
			x = x - 3;			// move left
		}
		else{
			x = x + 3;			// move right
		}
	}

	// reset countdown
	if (count_down <= 0){
		count_down = 10;
	}

	// jump or not
	jump_count_down = jump_count_down - 1;

	if (jump_count_down <= 0){
		if (random_range(-8,4) < 0){
			vspeed -= 15;
		}
		else{
			vspeed = 0;
		}
	}

	if (jump_count_down <= 0){
		jump_count_down = jump_count_set;
	}
} else if(dead==1)
{
	script_execute(posthumous);
}
