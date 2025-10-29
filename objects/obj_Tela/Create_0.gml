codigo_cpp = []; //array com trechos de código

global.tempo = 190*60;

tela = "clear"; //controle se tem coisa na tela ou não
erro = 0; //contagem de erro
trava = false; //pra impedir de digitar
errados=[]; //guardar letra digitada errada
gameover = false; //caso ele perca
vitoria = false;

frases = { //struct
	frase_escolhida_index: 0, //indice da frase escolhida aleatoriamente
	frase_escolhida: "", //frase escolhida aleatoriamente
	frase: [], //pra cada letra
	tam_frase: 0, //tamanho da frase escolhida
	frase_pos: 0, //posição da ultima letra digitada
	tam_frase_original: 0,
	initFrase: function(codigos){ //pra inicializar tudo
		frase_escolhida_index = irandom(array_length(codigos)-1);
		frase_escolhida = codigos[frase_escolhida_index];
		array_delete(codigos, frase_escolhida_index, 1); //deleta a escolhida pra não puxar ela denovo
		tam_frase = string_length(frase_escolhida);
		tam_frase_original = tam_frase;
		frase = []; //array vazio que será preenchido apenas com letras (sem espaços)
		for(var i=0;i<tam_frase; i++) { //inicia o vetor com todas as letras
			if(string_char_at(frase_escolhida, i + 1) != " " && string_char_at(frase_escolhida, i + 1) != "ª"  && string_char_at(frase_escolhida, i + 1) != "º"){
				array_push(frase, {
					letra: string_char_at(frase_escolhida, i + 1),
					cor: "branco"
				});
			}
		}
		tam_frase = array_length(frase); //atualiza tam_frase para o tamanho real do array (sem espaços)
		frase_pos = 0;
	}
}

tempo=0;
