/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(sprite_index)

	draw_self();


if(sprite_index == spr_safari){
	if(global.debug)
	{
		draw_text(x,y-64,string(global.cutscene));
		draw_text(x,y-64,string(x)+","+string(y));
	}

	draw_set_font(fnt_tutorial);
	draw_text(x+200,y-100,str_opening);

	if (global.cutscene == "102" or global.cutscene=="113")
	{
		
		draw_set_font(fnt_tutorial);
		draw_text(600,900,"PRESS ENTER TO CONTINUE");
		//str_opening = "Hey Dude~~! Why are you staying on an MP4 file?";
	}
	
}