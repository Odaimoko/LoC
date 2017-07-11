/// @description Insert description here
// You can write your code in this editor
if place_free(x, y+1){
   gravity = 0.5; 
}
else{
   gravity = 0;
}

if vspeed>10{vspeed=10}


if (keyboard_check(ord("W")) and !place_free(x,y+1)){
	vspeed-=10;
}
if (keyboard_check(ord("A")) and place_free(x-1,y)){
	x-=4;
}
if (keyboard_check(ord("D")) and place_free(x+1,y)){
	x+=4;
}


// go into folder
//draw_text(x,y,instance_nearest(x,y,obj_folder));
if (keyboard_check(ord("S"))) and place_meeting(x,y+1,obj_folder){
	if instance_nearest(x,y,obj_folder)==100004{
		room_goto(stage1);
	}
	if instance_nearest(x,y,obj_folder)==100005{
		room_goto(stage2);
	}
	if instance_nearest(x,y,obj_folder)==100012{
		room_goto(room0);
	}
	
}


// shoot
if(mouse_check_button(mb_left) && shoot_interval <= 0){
	shoot_interval = SHOOT_INTERVAL;
	var theid = instance_create_layer(x,y,"bulletlayer",obj_chrome_bullet);
	switch(shooting)
	{
		case "r":
			with(theid) sprite_index = spr_red_bullet;
			break;
		case "g":
			with(theid) sprite_index = spr_green_bullet;
			break;
		case "y":
			with(theid) sprite_index = spr_yellow_bullet;
			break;
	}
	
}

shoot_interval--;
if(y>1080){
	game_restart();
}