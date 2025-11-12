if(global.energia > 0){
	if(global.energia < 3*global.energia_cooldown) {
		if(sobe && qual == 1) {
			if(y_atual > y_trava){
				y_atual -= 1;
			} else {
				sobe = false;
				y_trava *= (-1);
			}
			y = y_base+y_atual;
		} else if(!sobe && qual == 1) {
			if(y_atual < y_trava) {
				y_atual += 1;
			} else {
				sobe = true;
				y_trava *= (-1);
			}
			y = y_base+y_atual;
		}
		if(global.energia < 2*global.energia_cooldown) {
			sprite_index = S_BarraEstresse_Red;
		}
		else {
			sprite_index = S_BarraEstresse;
		}
	}
	global.energia--;
	image_index = ceil(global.energia/global.energia_cooldown);
}else {
	obj_Tela.gameover = true;
	obj_Tela.trava = true;
	instance_destroy();
}
image_index = ceil(global.energia/global.energia_cooldown);

if(room == Room2 && qual != 2){ 
	x = 1506;
	y = 925;
	qual = 2;
}if(room == Room1 && qual != 1) {
	x = 1248;
	y = 768;
	qual = 1;
} if(room != Room2 && room != Room1) {
	instance_destroy();
}