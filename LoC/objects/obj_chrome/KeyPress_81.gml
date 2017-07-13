if (keyboard_check(ord("Q")) && can_q==1)
{
	
	if(sprite_index == spr_small_chrome) 
	{
		// jump up
		y-=32;
		
		// detect if left/right is free
		var left_free, right_free, coll_dist;
		coll_dist = 32;
		left_free = place_free(x-coll_dist,y);
		right_free = place_free(x+coll_dist,y);
		
		// allow change into big chrome only if left / right is free
		if ((left_free == 1) or (right_free == 1)){
			// change sprite first
			sprite_index = spr_big_chrome;
			if ((left_free == 1) and (right_free != 1)){
				// if right is not free, move right until right free
				while(place_free(x,y) != 1 ){
					x -= 1;
				}
			}
			if (right_free == 1) and (left_free != 1){
				while(place_free(x,y) != 1 ){
					x += 1;
				}
			}
			
			pre_hp_small = hp;
			hp=pre_hp_big;
		}
	}
	
	else
	{
		pre_hp_big = hp;
		hp = pre_hp_small ;
		sprite_index = spr_small_chrome;
	}
}

