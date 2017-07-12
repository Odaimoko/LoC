//@description Create Enemy with arg
// arg0 = sprite
// arg1 = x
// arg2 = y
var theid  = instance_create_layer(argument[1],argument[2],"Instances",obj_hp);

with (theid){
	sprite_index = argument[0];
	switch(sprite_index){
	
		case spr_green_bullet:
		
			break;
		case spr_red_bullet:
			
			break;	
	}
	
}
