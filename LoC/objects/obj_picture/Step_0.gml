// shooting
bullet_count_down = bullet_count_down - 1;
if (bullet_count_down <= 0){
	var theid = instance_create_layer(x,y,"bulletlayer",obj_dot_bullet);
	var et = enemyType;
	var si = sprite_index;
	
	with(theid)
	{
		sprite_index = si;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
	bullet_count_down = bullet_count_set;
}

// death
if (hp <= 0){
// TODO to somewhere it should be
	script_execute(toHeaven);
}