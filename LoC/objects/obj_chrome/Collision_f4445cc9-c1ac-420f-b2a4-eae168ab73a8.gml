/// @description Insert description here
// You can write your code in this editor
hp = hp - 1;

with(other){
	instance_destroy();
}

switch(shooting)
{
	case "r":
		if(shootRed==1)
			shootRed=0;
		break;
	case "g":
		if(shootGreen==1)shootGreen =0;
		break;
	case "y":
		if(shootYellow==1) shootYellow=0;
		break;
}