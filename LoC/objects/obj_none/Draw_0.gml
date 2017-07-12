/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_self();


draw_text(x-100,y-64,string(global.cutscene));
draw_text(x,y-64,string(x)+","+string(y));

if(sprite_index == spr_safari){
	
	draw_set_font(fnt_tutorial);
	draw_text(x-100,y-100,str_opening);
	if (global.cutscene == "102" or global.cutscene=="113")
	{
		
		draw_set_font(fnt_tutorial);
		draw_text(600,900,"PRESS ENTER TO CONTINUE");
		//str_opening = "Hey Dude~~! Why are you staying on an MP4 file?";
	}
	
}