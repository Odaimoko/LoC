/// @description Insert description here
// You can write your code in this editor

// move towards chrome
if (instance_exists(obj_chrome)){
	new_x = obj_chrome.x + random_range(-8,8);
	new_y = obj_chrome.y + random_range(-8,8);
	move_towards_point(new_x,new_y,5);
}