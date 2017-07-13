global.cutscene = "";
with(global.chromeid){
	x=100;
	y=600;
}

with(create_enemy(spr_file,1170,650,true,150,950)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,350,850)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,550,750)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,320,540)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,1080,750)){
	hp=100000;
	dead = 1;
}

create_enemy(spr_music,1170,650,false,1080,750);
create_enemy(spr_music,170,60,false,1080,750);
instance_create_layer(100,400,"Instances",obj_fragmaent);