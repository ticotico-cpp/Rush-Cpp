if(global.energia<=(global.energia_cooldown*2)) {
	visible = true;
	image_speed = 1;
}
else{
	image_speed=0;
	visible = false;
}