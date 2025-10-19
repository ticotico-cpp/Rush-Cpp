if(tela == "clear") { //se não tiver nada na tela
	frases.initFrase(codigo_cpp); //inicia tudo
	tela = "full";
} 

if (frases.frase_pos == frases.tam_frase) { //quando digitar a frase toda sem errar, ...
	if(erro==0) {
		tela = "clear"; //...muda pra puxar uma nova
	} else if(erro>0 || frases.frase_pos < frases.tam_frase){
		trava = true;
	}
}