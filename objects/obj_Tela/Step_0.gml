if(tela == "clear" && !gameover) { //se não tiver nada na tela
	if(array_length(codigo_cpp) > 0) {
		if(usando_alternativo) {
			frases.initFrase(codigo_alt); //inicia tudo
		} else {
			frases.initFrase(codigo_cpp); //inicia tudo
		}
		tela = "full";
	} else {
		vitoria = true;
		trava = true;
	}
} 

if(global.tempo >= 0 && !vitoria && !gameover) {
	global.tempo--;	
} else {
	trava = true;
	gameover = true;
}

// Verifica se precisa trocar para código alternativo
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

if (frases.frase_pos == frases.tam_frase && !vitoria) { //quando digitar a frase toda sem errar, ...
	if(erro==0) {
		tela = "clear"; //...muda pra puxar uma nova
	} else if(erro>0 || frases.frase_pos < frases.tam_frase){
		trava = true;
	}
}