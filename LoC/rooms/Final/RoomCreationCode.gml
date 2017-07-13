//create_enemy(spr_picture,1200,200,true,1000,820);
//create_enemy(spr_picture,200,200,true,600,800);



global.cutscene = "500";
create_hp(spr_yellow_bullet,100,800);
create_hp(spr_green_bullet,150,800);
create_hp(spr_red_bullet,50,800);
with(global.chromeid){
	x=500;
	y=91;
}
global.final_safariid = instance_create_layer(1800,300,"Instances",obj_safari);
with(global.final_safariid){
	
}

global.final_mp4id = instance_create_layer(
	global.final_safariid.x-60 ,global.final_safariid.y-50
	,"Instances",obj_none);
with(global.final_mp4id){
	sprite_index = spr_mp4_blank;
	visible=1;
}

