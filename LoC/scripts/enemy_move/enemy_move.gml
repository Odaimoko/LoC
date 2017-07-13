
	
if(dead==0){
	if(sprite_index == spr_music){
		if place_free(x, y+1){
		   gravity = 0.3; 
		}
		else{
		   gravity = 0;
		}

		if vspeed>10{vspeed=10;}

		--bullet_count_down;

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
	}
	else if (sprite_index == spr_picture) {
		x += 2*sin(deadtheta);
		y += 2*sin(deadtheta);
		deadtheta += random_range(0,0.2);
	} 
}
else if(dead==1)
{	
	if(sprite_index == spr_music){
		if(!audio_is_playing(sound0)) audio_play_sound(sound0,1,0);
		
	}
	gravity = 0;
	script_execute(posthumous);
}