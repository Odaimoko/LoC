/// @description Insert description here
// You can write your code in this editor
hp = hp - 1;

with (other){
	instance_destroy();
}

if (hp <= 0){
	dead=1;
}