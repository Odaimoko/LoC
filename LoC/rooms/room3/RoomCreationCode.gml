//create_enemy(spr_picture,222,744,true,1111,888);
//create_enemy(spr_music,500,100,true,4,3);
//create_enemy(spr_picture,222,744,true,1111,888);
//create_hp(spr_yellow_bullet,1500,650);
global.get_fragent=0;
global.debug=1;
global.chromeid = instance_create_layer(358,750,"Instances",obj_chrome);
if(global.debug)
with(global.chromeid){
	persistent=1
	can_w = 1
	can_s = 1
	can_a = 1
	can_d = 1
}

// first is guanqia No.   0 is the start, z is the end
// second and third is chr's movement stage;
// if set to empty string, player can move 
global.cutscene = "000";
global.opening_file=0;
global.tutorial_folder=0;
global.opening_frag1 = 0;
global.opening_frag2 = 0;
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
