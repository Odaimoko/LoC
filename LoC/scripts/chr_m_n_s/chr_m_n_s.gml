
if place_free(x, y+1){
   gravity = 2; 
}
else{
   gravity = 0;
}

if vspeed>MAX_DOWNWARD_SPEED{vspeed=MAX_DOWNWARD_SPEED}


if (keyboard_check(ord("W")) and !place_free(x,y+1)) and (can_w==1){
	vspeed-=30;
}
if (keyboard_check(ord("A")) and place_free(x-1,y)) and (can_a==1){
	x-=8;
}
if (keyboard_check(ord("D")) and place_free(x+1,y)) and (can_d==1){
	x+=8;
}


// go into folder
//draw_text(x,y,instance_nearest(x,y,obj_folder));
if (keyboard_check(ord("S"))) and place_meeting(x,y+1,obj_folder) and (can_s==1){
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
	game_restart();
}
