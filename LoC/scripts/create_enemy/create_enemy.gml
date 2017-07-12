//@description Create Enemy with arg
// arg0 = sprite
// arg1 = x
// arg2 = y
// arg3 = backToPlace = goes to original position posthumously
// arg4 = dead x
// arg5 = dead y

var theid  = instance_create_layer(argument[1],argument[2],"Instances",obj_enemy);



with (theid){
	sprite_index = argument[0];

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
			hp = 10;

			// shooting
			bullet_count_down = 60;
			bullet_count_set = 60;
			
			
			break;
	
	
	}
	
	
	if(argument_count==6)
	{
		back_to_place = argument[3];
		original_x = argument[4];
		original_y = argument[5];
	
	}




}


return theid; // return create id