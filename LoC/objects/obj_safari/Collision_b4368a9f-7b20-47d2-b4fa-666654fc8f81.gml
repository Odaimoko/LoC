/// @description Insert description here
// You can write your code in this editor
var hp_decrease = 0;
var bullet_sprite=0
with (other){
	bullet_sprite = sprite_index;
	instance_destroy();
}

switch(bullet_sprite){
	case spr_red_bullet:
			hp_decrease=4;
		break;
	case spr_green_bullet:
	case spr_yellow_bullet:
			hp_decrease=2;
		break;
}
hp-=hp_decrease+1;
if (hp <= 0){
	dead=1;
}