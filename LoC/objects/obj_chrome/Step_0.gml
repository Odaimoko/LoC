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