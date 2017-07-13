if(dead==0){
	if (vspeed != 0 && !place_free(x,y+vspeed) && vspeed>0){
		move_contact(270);
		vspeed = 0;
	} else if(vspeed != 0 && !place_free(x,y+vspeed) && vspeed<0){
		vspeed = 0;
	}
}
