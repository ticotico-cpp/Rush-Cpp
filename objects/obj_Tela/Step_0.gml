if(tela == "clear" && !gameover) { //se não tiver nada na tela
	if(array_length(codigo_cpp) > 0) {
		frases.initFrase(codigo_cpp); //inicia tudo
		tela = "full";
	} else {
		vitoria = true;
		trava = true;
	}
} 

if(global.tempo >= 0 && !vitoria) {
	global.tempo--;	
} else {
	trava = true;
	gameover = true;
}

if (frases.frase_pos == frases.tam_frase && !vitoria) { //quando digitar a frase toda sem errar, ...
	if(erro==0) {
		tela = "clear"; //...muda pra puxar uma nova
	} else if(erro>0 || frases.frase_pos < frases.tam_frase){
		trava = true;
	}
}