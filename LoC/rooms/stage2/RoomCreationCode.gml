global.cutscene=""

with(global.chromeid){
	x=200;
	y=500;
	shootRed=1;
}


with(create_enemy(spr_file,1170,650,true,90,1000)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,300,1000)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,500,1000)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,700,1000)){
	hp=100000;
	dead = 1;
}
with(create_enemy(spr_file,1170,650,true,900,1000)){
	hp=100000;
	dead = 1;
}
create_enemy(spr_picture,200,200,true,1200,1000);
with(create_enemy(spr_file,1170,650,true,1300,820)){
	hp=100000;
	dead = 1;
}
create_enemy(spr_picture,1600,300,true,1200,600);
instance_create_layer(1400, 680, "Instances", obj_fragmaent);
