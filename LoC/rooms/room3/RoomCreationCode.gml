//create_enemy(spr_picture,222,744,true,1111,888);
//create_enemy(spr_music,500,100,true,4,3);
//create_enemy(spr_picture,222,744,true,1111,888);
//create_hp(spr_yellow_bullet,1500,650);

chromeid = instance_create_layer(358,750,"Instances",obj_chrome);


// first is guanqia No.   0 is the start, z is the end
// second and third is chr's movement stage;
// if set to empty string, player can move 

global.cutscene = "100";
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