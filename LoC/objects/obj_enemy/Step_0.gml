if(just_created==-1){
	just_created=0;
} else if(just_created==0)
{
	image_alpha+=0.1;
}
if(image_alpha>=1 && just_created==0){
	just_created=1;
}

enemy_move();
enemy_shoot();
