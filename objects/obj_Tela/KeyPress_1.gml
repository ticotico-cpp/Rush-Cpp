if(keyboard_lastkey == vk_backspace && !gameover  && !vitoria) { //se apertar backspace
	if(frases.frase_pos>0) { //e não for a primeira
		if(frases.frase[frases.frase_pos-1].cor == "vermelho") { // ver se tava errado
			erro--; //se apagou o errado, sumiu um erro
			array_delete(errados, array_length(errados)-1, 1)
		}
		frases.frase[frases.frase_pos-1].cor = "branco"; //muda a cor da letra atual pra branco...
		frases.frase_pos--; //... e volta uma letra
	}
}

//pra não acusar erro quando apertarem algo que não é letra
else if(keyboard_lastkey == vk_shift) {} 
else if(keyboard_lastkey == vk_space) {} 
else if(keyboard_lastkey == vk_enter) {} 
else if(keyboard_lastkey == vk_control) {}
else if(keyboard_lastkey == vk_escape) {}
else if(keyboard_lastkey == vk_printscreen) {} 
else if(keyboard_lastkey == vk_alt) {} 
else if(keyboard_lastkey == vk_left) {} 
else if(keyboard_lastkey == vk_pagedown) {} 
else if(keyboard_lastkey == vk_f1) {} 
else if(keyboard_lastkey == vk_f2) {} 
else if(keyboard_lastkey == vk_f3) {}
else if(keyboard_lastkey == vk_f4) {}
else if(keyboard_lastkey == vk_f5) {}
else if(keyboard_lastkey == vk_f6) {} 
else if(keyboard_lastkey == vk_f7) {} 
else if(keyboard_lastkey == vk_f8) {} 
else if(keyboard_lastkey == vk_f9) {} 
else if(keyboard_lastkey == vk_f10) {} 
else if(keyboard_lastkey == vk_f11) {} 
else if(keyboard_lastkey == vk_f12) {} 
else if(keyboard_lastkey == vk_right) {}
else if(keyboard_lastkey == vk_up) {} 
else if(keyboard_lastkey == vk_down) {}
else if(keyboard_lastkey == vk_home) {} 
else if(keyboard_lastkey == vk_insert) {}
else if(keyboard_lastkey == vk_delete) {} 
else if(keyboard_lastkey == vk_pageup) {}

else if(frases.frase_pos < array_length(frases.frase) && frases.frase[frases.frase_pos].letra == keyboard_lastchar) { // se acertar a letra
	if (!trava) {
		frases.frase[frases.frase_pos].cor = "azul"; //muda a cor pra azul
		frases.frase_pos++; //e vai pra próxima
	}
} else if(frases.frase_pos < array_length(frases.frase)) { //se errar
	if (!trava) {
		frases.frase[frases.frase_pos].cor = "vermelho"; //muda pra vermelho
		frases.frase_pos++; //e vai pra próxima
		erro++; //aumenta um erro
		array_push(errados, keyboard_lastchar);
	}
} else {
	// Fora dos limites: evita acesso inválido e trava até sincronizar
	trava = true;
}