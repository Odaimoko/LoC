
if (keyboard_check(ord("Q")))
{
	if(sprite_index == spr_small_chrome) 
	{
		y-=32;
		pre_hp_big = hp;
		hp=pre_hp_small;
		sprite_index = spr_big_chrome;
	}
	
	else
	{
		pre_hp_small = hp;
		hp = pre_hp_big;
		sprite_index = spr_small_chrome;
	}
}

