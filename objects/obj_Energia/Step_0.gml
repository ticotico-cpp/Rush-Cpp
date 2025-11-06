if(global.energia > 0){
	if(global.energia < 3*global.energia_cooldown) {
		if(sobe) {
			if(y_atual > y_trava){
				y_atual -= 1;
			} else {
				sobe = false;
				y_trava *= (-1);
			}
		} else {
			if(y_atual < y_trava) {
				y_atual += 1;
			} else {
				sobe = true;
				y_trava *= (-1);
			}
		}
		y = y_base+y_atual;
		if(global.energia < 2*global.energia_cooldown) {
			sprite_index = S_BarraEstresse_Red;
		}
	}
	global.energia--;
	image_index = ceil(global.energia/global.energia_cooldown);
}else {
	obj_Tela.gameover = true;
	obj_Tela.trava = true;
	instance_destroy();
}
image_index = floor(global.energia/global.energia_cooldown);