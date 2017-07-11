// shooting
bullet_count_down = bullet_count_down - 1;
if (bullet_count_down <= 0){
	instance_create_layer(x,y,"bulletlayer",obj_dot_bullet);
	bullet_count_down = bullet_count_set;
}

// death
if (hp <= 0){
// TODO to somewhere it should be
	script_execute(toHeaven);
}