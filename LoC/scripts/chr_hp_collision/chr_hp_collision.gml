
var color;
with(other){
	color = sprite_index;

	instance_destroy();
}

switch(color)
{
	case spr_red_bullet:
		if(shootRed==0){
			shootRed=1;
			if(sprite_index==spr_big_chrome)
				hp++;
			else
				pre_hp_big++;
		}
		break;
	case spr_green_bullet:
		if(shootGreen==0){shootGreen =1;
			
			if(sprite_index==spr_big_chrome)
				hp++;
			else
				pre_hp_big++;
		}
		break;
	case spr_yellow_bullet:
		if(shootYellow==0) {shootYellow=1;
		
			if(sprite_index==spr_big_chrome)
				hp++;
			else
				pre_hp_big++;
		}
		break;
	
}
