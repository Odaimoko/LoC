

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
	if point_distance(x, y, original_x, original_y) > 5
	{
		move_towards_point(original_x,original_y, back_speed);
	}
	else{
	
		speed = 0;
	
		solid = !solid;
	
	} 
}