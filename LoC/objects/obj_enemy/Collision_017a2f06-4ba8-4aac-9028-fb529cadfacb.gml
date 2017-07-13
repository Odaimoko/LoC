/// @description Insert description here
// You can write your code in this editor
var music_play=0;
var hp_decrease = 0;
var bullet_sprite=0
with (other){
	bullet_sprite = sprite_index;
	instance_destroy();
}

switch(bullet_sprite){
	case spr_red_bullet:
		if(sprite_index == spr_camera)
			hp_decrease=2;
		if(sprite_index == spr_picture)
			hp_decrease=4;
		if(sprite_index == spr_music)
			hp_decrease=0;
		break;
	case spr_green_bullet:
		
		if(sprite_index == spr_camera)
			hp_decrease=4;
		if(sprite_index == spr_picture)
			hp_decrease=0;
		if(sprite_index == spr_music)
			hp_decrease=2;
		break;
	case spr_yellow_bullet:
		
		if(sprite_index == spr_camera)
			hp_decrease=0;
		if(sprite_index == spr_picture)
			hp_decrease=2;
		if(sprite_index == spr_music)
			hp_decrease=4;
		break;
}
if(dead==0)
	switch(sprite_index)
	{
		// bullet hit sound fx
		case spr_camera:
			audio_play_sound(camera_is_hit,1,0);
			break;
		case spr_picture:
			audio_play_sound(picture_is_hit,1,0);
			break;
		case spr_music:
			audio_play_sound(music_is_hit,1,0);
			break;
	}
hp-=hp_decrease;
if (hp <= 0){
	dead=1;
}