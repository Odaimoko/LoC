with(global.chromeid){
	x=110;
	y=750;
}
create_enemy(spr_camera,1400,550,true,1360,450);
//create_enemy(spr_music,1800,300,true,1140,600);

with(create_enemy(spr_file,1120,750,true,920,930)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,1080,750)){
	hp=100000;
	dead = 1;
}
create_enemy(spr_music,1570,400,false,800,650)
create_enemy(spr_picture,170,200,true,800,650)
//global.cutscene = "000";