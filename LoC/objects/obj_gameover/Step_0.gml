/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_enter)){
	game_restart();
}

if (y > room_height / 3){
	y -= spd;
	spd += 2;
}