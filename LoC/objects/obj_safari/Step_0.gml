/// @description Insert description here
// You can write your code in this editor

// gravity part

if(global.cutscene=="500"||global.cutscene=="501"){
	direct+=0.1;
	x+=sin(direct)*4;
	y+=cos(direct)*4

	if(keyboard_check_pressed(vk_enter))
		global.cutscene="502"
}	
else if (global.cutscene=="502")
{
	ang_speed=0;
	x-=random_range(4,10);
	y+=random_range(4,10);
	if(x<800 || y > 500)
		global.cutscene="503"
}
else if (global.cutscene=="503")
{
	ang_speed=10;
	str_opening="Well well well, look who it is..."
	if(x<800 || y > 500)
		global.cutscene="504"
}
else if (global.cutscene=="504")
{
	if(keyboard_check_pressed(vk_enter)) global.cutscene="505"
}
else if (global.cutscene=="505")
{

	if(keyboard_check_pressed(vk_enter))global.cutscene="506"
}
else if (global.cutscene=="506")
{
	str_opening="Yeah you're right~~~!!"
	if(keyboard_check_pressed(vk_enter))global.cutscene="507"
}
else if (global.cutscene=="507")
{
		// str_opening="Then what are you doing here?"
	if(keyboard_check_pressed(vk_enter))global.cutscene="508"
}
else if (global.cutscene=="508")
{
	str_opening="Cause the right software... is me."
	if(keyboard_check_pressed(vk_enter))global.cutscene="509"
}
else if (global.cutscene=="50b")
{
	if(keyboard_check_pressed(vk_enter))global.cutscene="50c"
// chrome moves
}
else if (global.cutscene=="50c")
{
	str_opening="Hmmm.Si."
	if(keyboard_check_pressed(vk_enter))global.cutscene="50d"
}
else if (global.cutscene=="50d")
{
	if(keyboard_check_pressed(vk_enter))global.cutscene="50e"
}

else if (global.cutscene=="50e")
{
	str_opening="You can't order me to stand here."
	if(keyboard_check_pressed(vk_enter))global.cutscene="510"
}
else if (global.cutscene=="510")
{
	str_opening="First I can fly, you can't"
	if(keyboard_check_pressed(vk_enter))global.cutscene="511"
}
else if (global.cutscene=="511")
{
	str_opening="And nobody stays still when his opponent can shoot."
	if(keyboard_check_pressed(vk_enter))global.cutscene="512"
}
else if (global.cutscene=="512")
{
	str_opening="You're just a piece of metal, so stupid and rigid."
	if(keyboard_check_pressed(vk_enter))global.cutscene="513"
}
else if (global.cutscene=="513")
{
	str_opening="And I, am a poetic journey!"
	if(keyboard_check_pressed(vk_enter))global.cutscene="514"
}
else if (global.cutscene=="514")
{
	str_opening="And I, am a poetic journey!"
	if(keyboard_check_pressed(vk_enter))global.cutscene="515"
}
else if (global.cutscene=="515")
{
	str_opening="Your wife? Noooooooooooo...."
	if(keyboard_check_pressed(vk_enter))global.cutscene="516"
}
else if (global.cutscene=="517")
{
	str_opening="I AM ANGRY!"
	if(keyboard_check_pressed(vk_enter))global.cutscene="518"
}

else if (global.cutscene=="518")
{
	str_opening="I AM ANGRY!"
	if(keyboard_check_pressed(vk_enter))global.cutscene="519"
}
else if (global.cutscene=="519")
{
	str_opening=""
}




if(global.cutscene=="600" or global.cutscene==""){ // fight
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
			var theid = instance_create_layer(x+random_range(10,100),y+random_range(10,100)
				,"bulletlayer",obj_safari_bullet);
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
} 
	else if(dead==1)
	{
		script_execute(posthumous);
	}
}