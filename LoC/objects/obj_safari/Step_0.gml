/// @description Insert description here
// You can write your code in this editor
if place_free(x, y+1){
   gravity = 0.5; 
}
else{
   gravity = 0;
}

if vspeed>10{vspeed=10;}

// shoot the enemy
if (bullet_countdown <= 0){
	instance_create_layer(x,y,"bulletlayer",obj_safari_bullet);
	bullet_countdown = bullet_count_set;
}
bullet_countdown = bullet_countdown - 1;