/// @description Insert description here
// You can write your code in this editor

if(sprite_index == spr_safari){
	ang_speed = 10;
	
	image_angle+=ang_speed;
	
	if(global.cutscene == "100") 
	{
		// first opening
		
		path_start(cut_00_safari, 15, path_action_stop, false);
		
	 		global.cutscene = "101";
	} else if (global.cutscene == "101")
	{
		
		
		if( (x-760) <= 5  )
			global.cutscene = "102";
	} else if (global.cutscene == "102")
	{
		
		
		str_opening = "Hey Dude~~! Why are you staying on an MP4 file?";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "103";
	} else if (global.cutscene == "103")
	{
		
		
		str_opening = "Hey Dude~~! Why are you staying on an MP4 file?";
		if(keyboard_check_pressed(vk_enter)) global.cutscene = "104";
	} else if (global.cutscene == "104")
	{
		
		
		str_opening = "Of course you can.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "105";

		
	}  else if (global.cutscene == "105")
	{
		
		
		str_opening = "But should it be opened by a media player?";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "106";
	} else if (global.cutscene == "106")
	{
		
		
		str_opening = "But should it be opened by a media player?";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "107";
	}else if (global.cutscene == "107")
	{
		
		
		str_opening = "But should it be opened by a media player?";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "108";
	}

	 else if (global.cutscene == "108")
	{
		
		str_opening = "You know what? That's not fair!";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "109";
	}
	 else if (global.cutscene == "109")
	{
		
		str_opening = "You know what? That's not fair!";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "10a";
	}  else if (global.cutscene == "10a")
	{
		
		str_opening = "Do you know a saying? 'GODS HOMING'.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "10b";
	}else if (global.cutscene == "10b")
	{
		
		str_opening = "Do you know a saying? 'GODS HOMING'.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "10c";
	}  else if (global.cutscene == "10c")
	{
		
		
		str_opening = "Everything should be handled rightly.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "10d";
	} else if (global.cutscene == "10d")
	{
		
		
		str_opening = "Everything should be handled rightly.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "10e";
	}   else if (global.cutscene == "10e")
	{
		
		str_opening = "Fair enough...";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "110";
	} else if (global.cutscene == "110")
	{
		
		str_opening = "Action speaks louder than words.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "111";
	} else if (global.cutscene == "111")
	{
		
		str_opening = "HEY!";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "112";
	} else if (global.cutscene == "112")
	{
		
		targetX=x+100;
		move_towards_point(x+100,y,random_range(4,7));
			global.cutscene = "113";
	}else if (global.cutscene == "113")
	{
		
		if(targetX-x<5) {
			speed=0
			if(keyboard_check_pressed(vk_enter))
				global.cutscene="114";
		}
	}else if (global.cutscene == "114")
	{
		
		var new_x = obj_chrome.x ;
		targetX = new_x;
		var new_y = obj_chrome.y ;
		move_towards_point(new_x,new_y,random_range(24,27));
		global.cutscene="115";
	}
	else if(global.cutscene == "115"){
		if(x-targetX<=40) {
			speed=0
			global.cutscene="116";
		}
	}
	else if(global.cutscene == "117"){
		
		str_opening = "Your ability to play video has gone now.";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "118";
	
	}
	else if(global.cutscene == "118"){
		
		str_opening = "Good bye and Sayonara!";
		if(keyboard_check_pressed(vk_enter))	global.cutscene = "119";
	} 
	else if (global.cutscene == "119")
	{
		
		targetX = 2000;
		move_towards_point(targetX,y+200,random_range(24,27));
		with(global.opening_mp4id)
			move_towards_point(2000,y+200,random_range(24,27));
		global.cutscene="11a";
	}else if (global.cutscene == "11a")
	{
		
		if(targetX-x<5) {
			speed=0
			instance_destroy();
			with(global.opening_mp4id)
				instance_destroy();
			global.cutscene="11b";
		}
	}
	
}
else if(sprite_index == spr_fragment){
	ang_speed=30;
	image_angle+=ang_speed;
}