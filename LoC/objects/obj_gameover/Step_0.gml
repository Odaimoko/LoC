/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)){

	if(room_get_name(room)=="room3"){
		room_restart();
	}
	else{
		room_goto(room3);
		global.cutscene="00a";
	}
	instance_destroy();
}

if (y > room_height / 3){
	y -= spd;
	spd += 2;
}