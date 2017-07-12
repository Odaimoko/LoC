// for camera
if (sprite_index == spr_camera){
	if (back_to_place == false){	// doesn't have original place to go
		gravity=-0.05;

		if(y>=-50 && image_alpha>0){
			x+=10*sin(deadtheta);
			y-=5;
			deadtheta+=0.2;
			image_alpha-=.04;
		}
		else
			instance_destroy();
	}
	else{
		sprite_index = spr_camera_broken;
		falling_stage = 0;
		fall_speed = 0.01;
	}
}
// falling camera
if (sprite_index == spr_camera_broken){
	if (falling_stage == 0){
		image_angle += fall_speed;
		fall_speed += 0.01;
		if (image_angle >= 36.6) {
			x = x - 79.40;
			sprite_set_offset(spr_camera_broken,0,64);
			falling_stage = 1;
		}
	}
	// falling to flat
	if (falling_stage == 1){
		image_angle += fall_speed;
		// comment this to let it fall in two direction
		if (fall_speed <= 0.5){
			fall_speed = 0.5;
		}
		else{
			fall_speed -= 0.01;
		}
		// uncommment this to change in two direction
		fall_speed -= 0.01;
	 	if (image_angle >= 90) falling_stage = 2;
		if (image_angle <= -270) falling_stage = 2;
	}
}

// for otehrs
else{
	if(back_to_place==false) // doesn't have original place to go
	{
		gravity=-0.05;

		if(y>=-50 && image_alpha>0){
			x+=10*sin(deadtheta);
			y-=5;
			deadtheta+=0.2;
			image_alpha-=.04;
		}
		else
			instance_destroy();
	}
	else{
	
		if(started_back==0)
			image_alpha-=.1;
		else
		{
		
			image_alpha+=0.1;
			x=original_x;
			y=original_y;
		}
		if(image_alpha <=0)
		{
			started_back=1;
		}

	}
}
