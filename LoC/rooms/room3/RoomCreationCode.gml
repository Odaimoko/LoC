//create_enemy(spr_picture,222,744,true,1111,888);
//create_enemy(spr_music,500,100,true,4,3);
//create_enemy(spr_picture,222,744,true,1111,888);
//create_hp(spr_yellow_bullet,1500,650);

chromeid = instance_create_layer(358,750,"Instances",obj_chrome);

global.cutscene = "000";
// first is guanqia No.   0 is the start, z is the end
// second and third is chr's movement stage;
// if set to empty string, player can move 

global.cutscene = "-00";
if(global.cutscene == "-00"){
	mp4id = instance_create_layer(300,700,"Instances",obj_none);
	with(mp4id){
		sprite_index = spr_mp4_blank;
		visible=1;
	}
	
	
	safariid = instance_create_layer(1200,400,"Instances",obj_safari);
	with(safariid){
		
	}


}
