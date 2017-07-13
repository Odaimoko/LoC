/// @description Insert description here
// You can write your code in this editor

dead = 0
deadtheta=0;

// hp
hp = 0;

// shooting
can_shoot=1;
bullet_count_down = 0;
bullet_count_set = 0;
// slient shooting time for camera
bullet_count_down_slient = 0;
// active shooting time for camera
bullet_count_down_active = 0;


// for random direction
count_down = 0;
direct = 0;
// for jump
jump_count_set = 60;
jump_count_down = 40;


//posthumous
back_to_place = false;
original_x = 0;
original_y=0;
back_speed=10;
started_back=false;

// drop bullet
hasDroppedBullet=0;

// when creation begins, it is transparent
// see usage in step create_enemy
image_alpha = 0;
just_created=-1; 
//-1: before creation 0: in creation 1:after creation 
str_swear="";


// for score
remain_score = 100;