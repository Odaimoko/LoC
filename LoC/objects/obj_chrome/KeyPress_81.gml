
if (keyboard_check(ord("Q")))
{
	if(sprite_index == spr_small_chrome) 
	{
		sprite_index = spr_big_chrome;
	}
	
	else
	{
		sprite_index = spr_small_chrome;
	}
	y-=32;
}

