/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

// FIRST CUT SCENE
if(keyboard_check_pressed(vk_space)){room_goto(middl);}
image_angle-=ang_speed;
// FIRST CUT SCENE
if (global.cutscene == "103"){
	// the first scenery, safari flies here and laughs at chrome.
	// turn around many times 
	ang_speed=10;
	
	
	str_opening = "Well, I can open it, so be on it."
	
} else if(global.cutscene == "106"){
	str_opening="But this MP4 file stays with me for so long.";
} else if(global.cutscene == "107"){
	
	str_opening="I won't leave HER.";
}else if(global.cutscene == "108"){
	
	str_opening="I won't leave HER.";
}else if(global.cutscene == "109" ){
	ang_speed=0;
	str_opening="How you said that?";
}else if(global.cutscene == "10a"){
	
	str_opening="How you said that?";
} else if(global.cutscene == "10b"){
	
	str_opening="I'm glad to hear it.";
}else if(global.cutscene == "10d"){
	ang_speed=10;
	str_opening="Yeah, She's my MRS RIGHT";
}else if(global.cutscene == "116"){
	x-=10;
	gravity=4;
	ang_speed=0;
	str_opening=""
	
	
	global.opening_frag1 = instance_create_layer(x,y,"Instances",obj_none);
	with(global.opening_frag1)
	{
		sprite_index = spr_fragment;	
	}
	with(global.opening_frag1){
		move_towards_point(-1000,y-3000,random_range(14,27));
	}
	
	//global.opennig_frag2 = instance_create_layer(x,y,"Instances",obj_none);
	//with(global.opening_frag2)
	//{
	//	sprite_index = spr_fragment;
	//}
	//with(global.opening_frag2){
	//	move_towards_point(2000,y+3000,random_range(14,27));
	//}
	 global.cutscene="11f";
} else if(global.cutscene == "11f"){
	x-=10;
	if(x<=300) 	
		global.cutscene="117";
} else if(global.cutscene == "11b"){
	str_opening="...Holy shit! My wife...And I CAN'T play video now!!"
	
	//with(global.opening_frag2)
	//	instance_destroy();
	with(global.opening_frag1)	
		instance_destroy();
		
	if(keyboard_check_pressed(vk_enter))	
		global.cutscene="120";
} 
else if(global.cutscene == "120"){
	str_opening="SPOTLIGHT!!!SPOTLIGHT!!!"
	if(keyboard_check_pressed(vk_enter))	
		global.cutscene="121";
} 

else if(global.cutscene == "121"){
	str_opening="Damn..Permission Denied..."
	if(keyboard_check_pressed(vk_enter))	
		global.cutscene="122";
} 

else if(global.cutscene == "122"){
	str_opening="Now it's time to save her back! Myself!"
	if(keyboard_check_pressed(vk_enter))	
		global.cutscene="123";
} 
else if(global.cutscene == "123"){
	str_opening="Well...Long time no move."
	if(keyboard_check_pressed(vk_enter))	
		global.cutscene="124";
} 

else if(global.cutscene == "124"){
	str_opening="Let me familiarize myself with movement."
	if(keyboard_check_pressed(vk_enter)){
	
			str_opening="";
			global.cutscene="000";

	}	
} 



//TUTORIAL
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
	can_d=1
	can_a=1
	if place_free(x, y+1){
	   gravity = 2; 
	}
	else{
	   gravity = 0;
	}
	if (keyboard_check(ord("A")) and place_free(x-1,y)) and (can_a==1){
		x-=8;
	}

	if (keyboard_check(ord("D")) and place_free(x+1,y)) and (can_d==1){
		x+=8;
	}
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
	can_q=1
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
	create_hp(spr_red_bullet,500,700);
	
	global.cutscene = "010";
}
else if(global.cutscene == "010"){
	chr_m_n_s();
	if(shootRed==1) 
		global.cutscene="006";
}
else if (global.cutscene == "006"){
	chr_m_n_s();
	var ene =  create_enemy(spr_picture,1000,200);
	with(ene){
		global.ene_x = x;
		global.ene_y = y;
	}
	global.cutscene="007";
}
else if (global.cutscene == "007"){
	chr_m_n_s();
	// fighting
	if(not instance_exists(obj_enemy))
	{
		if(not instance_exists(obj_hp))
			create_hp(spr_yellow_bullet,global.ene_x,global.ene_y);
		global.cutscene="008";
	}
}
else if (global.cutscene == "008"){
	chr_m_n_s();
	if(shootYellow==1)
		global.cutscene="009";
}
else if (global.cutscene == "009"){
	chr_m_n_s();
	
	if(shooting=="y")
		global.cutscene="020";
}
else if (global.cutscene == "020"){
	chr_m_n_s();
	if(x<=400)
		global.cutscene="021";
}
else if (global.cutscene == "021"){
	chr_m_n_s();
	global.opening_file=create_enemy(spr_file,700,900);
	with(global.opening_file){
		can_shoot=0
		hp=10000;
	}
	
	global.cutscene="022";
}
else if (global.cutscene == "022"){
	chr_m_n_s();
	if(x>=730&&x<=735&&y>800&&y<870
		&& keyboard_check(ord("D") ) )
		global.cutscene="023";
}
else if (global.cutscene == "023"){
	chr_m_n_s();
	
	global.tutorial_folder=create_enemy(spr_folder,900,700);
	with(global.tutorial_folder){
		can_shoot=0;
		hp=10000;
	}
		global.cutscene="024";
}
else if (global.cutscene == "024"){
	chr_m_n_s();
	can_s=1
	if(x>=920&&x<=1030&&
		((y>=689 &&y<=694)  ||  (y>=712&&y<=714))
		&& keyboard_check_pressed(ord("S")) )
		global.cutscene="025";
}
else if (global.cutscene == "025"){
	chr_m_n_s();
	x=300
	y=800
	
	with(global.tutorial_folder){
		instance_destroy()
	}
	with(global.opening_file){
		instance_destroy()

	}
	
		global.cutscene="00a";
}
else if (global.cutscene == "00a"){
	chr_m_n_s();
	alarm[0]=150;
	global.cutscene="00b";
}
else if (global.cutscene == "00b"){

	//create_hp(spr_red_bullet,x,y)
	//create_hp(spr_green_bullet,x,y)
	//create_hp(spr_yellow_bullet,x,y)
	create_enemy(spr_picture,400,200,true,1550,940);
	//create_enemy(spr_music,700,300);
	with(create_enemy(spr_file,1100,850)){
		can_shoot=0
		hp=10000
	}
	with(create_enemy(spr_file,1200,850)){
		can_shoot=0
		hp=10000
	}
	with(create_enemy(spr_file,1300,850)){
		can_shoot=0
		hp=10000
	}
	with(create_enemy(spr_file,300,600)){
		can_shoot=0
		hp=10000
	}
	with(create_enemy(spr_folder,900,600)){
		can_shoot=0
		hp=10000
	}
	with(create_enemy(spr_folder,100,300)){
		can_shoot=0
		hp=10000
	}
	create_enemy(spr_picture,1400,200,true,600,800);

	global.cutscene="";
	chr_m_n_s();

}


// add living time
global.thescore += 1/30;