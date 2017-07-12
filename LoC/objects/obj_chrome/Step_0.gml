/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

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


if(global.cutscene == ""){
	chr_m_n_s();
	
	can_w = 1
	can_s = 1
	can_a = 1
	can_d = 1
} else if (global.cutscene == "000")
{
	
	if (keyboard_check(ord("A")) and place_free(x-1,y)) and (can_a==1){
		x-=8;
	}
	can_a=1
	
	if place_free(x, y+1){
	   gravity = 2; 
	}
	else{
	   gravity = 0;
	}
	if(x<=250) global.cutscene = "001";
}
else if (global.cutscene == "001")
{
	if (keyboard_check(ord("A")) and place_free(x-1,y)) and (can_a==1){
		x-=8;
	}

	if (keyboard_check(ord("D")) and place_free(x+1,y)) and (can_d==1){
		x+=8;
	}
	can_d=1
	can_a=1
	if(x>=350) global.cutscene="002";
}
else if (global.cutscene == "002")
{
	
	if place_free(x, y+1){
	   gravity = 2; 
	}
	else{
	   gravity = 0;
	}


	if (keyboard_check(ord("W")) and !place_free(x,y+1)) and (can_w==1){
		vspeed-=30;
	}
	can_w=1
	if (keyboard_check(ord("A")) and place_free(x-1,y)) and (can_a==1){
		x-=8;
	}
	if (keyboard_check(ord("D")) and place_free(x+1,y)) and (can_d==1){
		x+=8;
	}


	if(y<=960) global.cutscene="003";
}

else if (global.cutscene == "003"){
	chr_m_n_s();
	if(sprite_index == spr_small_chrome)
		global.cutscene="004";
		
}
else if (global.cutscene == "004"){
	chr_m_n_s();
	if(sprite_index == spr_big_chrome)
		global.cutscene="005";
		
}
else if (global.cutscene == "005"){
	chr_m_n_s();
	if(shootRed==1) global.cutscene = "006";
}
else if (global.cutscene == "006"){
	chr_m_n_s();
	create_enemy(spr_picture,1000,200);
	global.cutscene="007";
}
else if (global.cutscene == "007"){
	chr_m_n_s();
	
}