/// @description Insert description here
// You can write your code in this editor
draw_self();

if(sprite_index != spr_small_chrome){
	HP_DRAW_Y=y-50;
	switch(shooting) {
	case "r": if(shootRed) draw_circle_color(x-30, HP_DRAW_Y, 11, c_orange, c_orange, false); break;
	case "g": if(shootGreen) draw_circle_color(x, HP_DRAW_Y, 11, c_orange, c_orange, false); break;
	case "y": if(shootYellow) draw_circle_color(x+30, HP_DRAW_Y, 11, c_orange, c_orange, false); break;
}
	if(shootRed) draw_circle_color(x-30, HP_DRAW_Y, 8, c_red, c_red, false);
	else draw_circle_color(x-30, HP_DRAW_Y, 8, c_gray, c_gray, false);
	if(shootGreen) draw_circle_color(x, HP_DRAW_Y, 8, c_lime, c_lime, false);
	else draw_circle_color(x, HP_DRAW_Y, 8, c_gray, c_gray, false);
	if(shootYellow)draw_circle_color(x+30, HP_DRAW_Y, 8, c_yellow, c_yellow, false);
	else draw_circle_color(x+30, HP_DRAW_Y, 8, c_gray, c_gray, false);
}
draw_text(x-100,y-64,string(global.cutscene));
draw_text(x,y-64,string(x)+","+string(y));



switch(global.cutscene)
{

	case "000":
		str_tutorial="USE 'A' TO MOVE LEFT";
		break;
	case "001":
		str_tutorial="GREAT! NOW USE 'D' TO MOVE RIGHT";
		break;
	case "002":
		str_tutorial="'W' IS USED TO JUMP";
		break;
	case "003":
		str_tutorial="CHROME CAN CHANGE-->>PRESS 'Q'";
		break;
	case "004":
		str_tutorial="ANOTHER 'Q' TO CHANGE BACK";
		break;
	case "005":
	case "010":
		str_tutorial="NOW LET'S LEARN HOW TO SHOOT-->>PICK UP THAT RED CRESCENT";
		// at this stage, player can shoot 
		break;
	case "006":
		break;
	case "007":
		str_tutorial="IF HIT BT BULLETS, YOUR CURRENT BULLET WILL LOST";
		break;
	case "008":
		str_tutorial="SOME ENEMIES DROP COLORED CRESCENTS, PICK IT UP!";
		break;
	case "009":
		str_tutorial="NOW PRESS '3' TO CHOOSE YELLOW BULLET";
		break;
	case "00b":
		str_tutorial="IT'S OK FOR YOU TO CONTINUE YOUR JOURNEY. ENJOY...";
		break;
	default:
		str_tutorial="";
		break;
}


draw_set_font(fnt_tutorial);
draw_text(x,y-100,str_tutorial);
