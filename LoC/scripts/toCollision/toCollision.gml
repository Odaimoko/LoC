if(dead==0){
	if (vspeed > 0 && !place_free(x,y+vspeed)){
		move_contact(270);
	}
	vspeed = 0;
}