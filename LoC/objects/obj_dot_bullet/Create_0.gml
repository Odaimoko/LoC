/// @description Insert description here
// You can write your code in this editor
ang_speed = random_range(2,5);
// move towards chrome
if (instance_exists(obj_chrome)){
	new_x = obj_chrome.x + random_range(-20,20);
	new_y = obj_chrome.y + random_range(-20,20);
	move_towards_point(new_x,new_y,random_range(7,10));
	
}
