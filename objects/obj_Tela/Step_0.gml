if(tela == "clear" && !gameover && !vitoria) { //se não tiver nada na tela
	if(usando_alternativo) {
		if(array_length(codigo_alt) >= frases.frase_escolhida_index+2) {
			frases.initFrase(codigo_alt); //inicia tudo
		} else {
		vitoria = true;
		trava = true;
		}
	} else {
		if(array_length(codigo_cpp) >= frases.frase_escolhida_index+2) { 
			frases.initFrase(codigo_cpp); //inicia tudo
		}
		else {
			vitoria = true;
			trava = true;
		}
	} 
	tela = "full";
} 

if(global.tempo >= 0 && !vitoria && !gameover) {
	global.tempo--;	
} else if(global.tempo < 0){
	trava = true;
	gameover = true;
}

if(tela == "full" && !gameover && !vitoria && !frases.usando_alternativo) {
	if(global.energia <= 2*global.energia_cooldown) {
		// Verifica se o índice é válido e se os arrays têm correspondência
		if(array_length(codigo_alt) > 0 && frases.frase_escolhida_index >= 0 && frases.frase_escolhida_index < array_length(codigo_alt)) {
			var codigo_alternativo = codigo_alt[frases.frase_escolhida_index];
			if(codigo_alternativo != "") {
				frases.trocarCodigo(codigo_alternativo);
			}
		}
	} 
}
if(tela == "full" && !gameover && !vitoria && frases.usando_alternativo) {
	if(global.energia > 2*global.energia_cooldown) {
		// Verifica se o índice é válido e se os arrays têm correspondência
		if(array_length(codigo_cpp) > 0 && frases.frase_escolhida_index >= 0 && frases.frase_escolhida_index < array_length(codigo_cpp)) {
			var codigo_normal = codigo_cpp[frases.frase_escolhida_index];
			if(codigo_normal != "") {
				frases.reverterCodigo(codigo_normal);
			}
		}
	} 
}


if (frases.frase_pos == frases.tam_frase && !vitoria) { //quando digitar a frase toda sem errar, ...
	if(erro==0) {
		tela = "clear"; //...muda pra puxar uma nova
	} else if(erro>0 || frases.frase_pos < frases.tam_frase){
		trava = true;
	}
}

if (keyboard_check_pressed(vk_escape)) {
    if (room == Room1) {
        room_goto(Room2);
    } 
}

if(room != Room1 && room != Room2){
	instance_destroy();
}