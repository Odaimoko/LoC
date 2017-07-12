if(dead==1)return;
--bullet_count_down;
if (bullet_count_down <= 0){
	var theid = instance_create_layer(x,y,"bulletlayer",obj_dot_bullet);
	var si = sprite_index;
	
	with(theid)
	{
		sprite_index = si;
		image_xscale = 0.3;
		image_yscale = 0.3;
	}
	bullet_count_down = bullet_count_set;
}
