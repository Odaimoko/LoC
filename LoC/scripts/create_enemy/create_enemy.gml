//@description Create Enemy with arg
// arg0 = sprite
// arg1 = x
// arg2 = y
// arg3 = ???

var theid  = instance_create_layer(argument1,argument2,"Instances",obj_enemy);



with (theid){
	sprite_index = argument0;

	switch(sprite_index){
	
		case spr_music:
			hp = 15;

			// for random direction
			count_down = 120;
			direct = 1;

			// for shooting
			bullet_count_set = 60;
			bullet_count_down = 60;

			// for jump
			jump_count_set = 60;
			jump_count_down = 40;
			break;
		case spr_picture:
			

			// hp
			hp = 20;

			// shooting
			bullet_count_down = 30;
			bullet_count_set = 30;
			
			
			break;


	
	
	}







}