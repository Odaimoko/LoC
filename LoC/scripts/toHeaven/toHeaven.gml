
gravity=-0.05;
//object_set_solid(id,false);
if(y>=-50 && image_alpha>0){
	x+=10*sin(deadtheta);
	y-=5;
	deadtheta+=0.2;
	image_alpha-=.04;
}
else
	instance_destroy();