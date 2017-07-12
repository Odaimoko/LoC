

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