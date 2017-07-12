
var color;
with(other){
	color = sprite_index;

	instance_destroy();
}

switch(color)
{
	case spr_red_bullet:
		if(shootRed==0)
			shootRed=1;
		break;
	case spr_green_bullet:
		if(shootGreen==0)shootGreen =1;
		break;
	case spr_yellow_bullet:
		if(shootYellow==0) shootYellow=1;
		break;
	
}
