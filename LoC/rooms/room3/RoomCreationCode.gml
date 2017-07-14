
global.get_fragent=0;
global.debug=0;
if(not instance_exists(obj_chrome)){
	global.chromeid = instance_create_layer(358,750,"Instances",obj_chrome);

}
with(global.chromeid){
	persistent=1
	x=350
	y=800
	hp=1
	
	shootRed=0;
	shootYellow=0;
	shootGreen=0;
	sprite_index = spr_big_chrome
	pre_hp_big=1;
	pre_hp_small = 1;
	//can_w = 1
	//can_s = 1
	//can_a = 1
	//can_d = 1
}
// first is guanqia No.   0 is the start, z is the end
// second and third is chr's movement stage;
// if set to empty string, player can move 
//if( instance_exists(obj_chrome)){

	if(global.chromeid.gamerestarted==1){
		global.cutscene="00a"
	}
	else{
		global.cutscene = "100";
	}
//}
global.opening_file=0;
global.tutorial_folder=0;
global.opening_frag1 = 0;
global.opening_frag2 = 0;
//room_goto(Final);
if(global.cutscene == "100"){
	
	global.opening_safariid = instance_create_layer(1200,400,"Instances",obj_none);
	with(global.opening_safariid){
		
		sprite_index = spr_safari;
		visible=1;
	}
	
	
	global.opening_mp4id = instance_create_layer(300,700,"Instances",obj_none);
	with(global.opening_mp4id){
		sprite_index = spr_mp4_blank;
		visible=1;
	}
	
}
