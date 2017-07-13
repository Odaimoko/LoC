
if(shootGreen == 0 && shooting = "g") {
	if(shootRed != 0) shooting = "r";
	else if(shootYellow != 0) shooting = "y";
}
if(shootYellow == 0 && shooting = "y") {
	if(shootRed != 0) shooting = "r";
	else if(shootGreen != 0) shooting = "g";
}
if(shootRed == 0 && shooting = "r") {
	if(shootGreen != 0) shooting = "g";
	else if(shootYellow != 0) shooting = "y";
}

if place_free(x, y+1){
   gravity = 2; 
}
else{
   gravity = 0;
}

if vspeed>MAX_DOWNWARD_SPEED{vspeed=MAX_DOWNWARD_SPEED}


if (keyboard_check(ord("W")) and !place_free(x,y+1)) and (can_w==1){
	vspeed=-30;
}
if (keyboard_check(ord("A")) and place_free(x-1,y)) and (can_a==1){
	x-=13;
}
if (keyboard_check(ord("D")) and place_free(x+1,y)) and (can_d==1){
	x+=13;
}


// go into folder
//draw_text(x,y,instance_nearest(x,y,obj_folder));
if (keyboard_check(ord("S"))) and place_meeting(x,y+1,obj_folder) and (can_s==1){
	if instance_nearest(x,y,obj_folder)==10000{
		room_goto(middl);
	}
	if instance_nearest(x,y,obj_folder)==10006{
		room_goto(middl);
	}
	if instance_nearest(x,y,obj_folder)==100001{
		room_goto(Final);
	}
	if instance_nearest(x,y,obj_folder)==folder1id{
		room_goto(middl);
	}
	if instance_nearest(x,y,obj_folder)==folder2id{
		room_goto(branch);
	}
	
}


if (keyboard_check(ord("S"))) and place_meeting(x,y+1,obj_enemy) and (can_s==1){
	if (instance_nearest(x,y,obj_enemy).sprite_index==spr_camera_broken)	room_goto(stage2);
}

// shoot
--shoot_interval;
if(mouse_check_button(mb_left) && shoot_interval <= 0
	&& sprite_index = spr_big_chrome){
	shoot_interval = SHOOT_INTERVAL;
	if(
		(shooting=="g" && shootGreen==1) ||
		(shooting == "r" && shootRed==1 ) || 
		(shooting=="y" && shootYellow==1) )
		var theid = instance_create_layer(x,y,"bulletlayer",obj_chrome_bullet);
	switch(shooting)
	{
		case "r":
			if(shootRed==1){
				with(theid) sprite_index = spr_red_bullet;
				audio_play_sound(biu,1,0);
			}
			break;
		case "g":
			if(shootGreen==1){
				with(theid) sprite_index = spr_green_bullet;
				audio_play_sound(biu,1,0);
			}
			break;
		case "y":
			if(shootYellow==1){
				with(theid) sprite_index = spr_yellow_bullet;
				audio_play_sound(biu,1,0);
			}
			break;
	}
	
}

if(y>1080 || hp <= 0){
	if (instance_exists(obj_gameover) == 0){
		instance_create_layer(x,y,"gameoverlayer",obj_gameover);
	}
}
