if(keyboard_lastkey == vk_backspace) { //se apertar backspace
	if(frases.frase_pos>0) { //e não for a primeira
		if(frases.frase[frases.frase_pos-1].cor == "vermelho") { // ver se tava errado
			erro--; //se apagou o errado, sumiu um erro
		}
		frases.frase[frases.frase_pos-1].cor = "branco"; //muda a cor da letra atual pra branco...
		frases.frase_pos--; //... e volta uma letra
	}
}
else if(keyboard_lastkey == vk_shift) {} //pra não acusar erro quando apertarem shift
else if(keyboard_lastkey == vk_space) {} //pra não acusar erro quando apertarem shift
else if(frases.frase[frases.frase_pos].letra == keyboard_lastchar) { // se acertar a letra
	if (!trava) {
		frases.frase[frases.frase_pos].cor = "azul"; //muda a cor pra azul
		frases.frase_pos++; //e vai pra próxima
	}
} else { //se errar
	if (!trava) {
		frases.frase[frases.frase_pos].cor = "vermelho"; //muda pra vermelho
		frases.frase_pos++; //e vai pra próxima
		erro++; //aumenta um erro
	}
}