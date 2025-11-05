codigo_cpp = []; //array com trechos de código
codigo_alt = [];

global.tempo = 5*60*60;

tela = "clear"; //controle se tem coisa na tela ou não
erro = 0; //contagem de erro
trava = false; //pra impedir de digitar
errados=[]; //guardar letra digitada errada
gameover = false; //caso ele perca
vitoria = false;
usando_alternativo = false;

frases = { //struct
	frase_escolhida_index: -1, //indice da frase escolhida aleatoriamente
	frase_escolhida: "", //frase escolhida aleatoriamente
	frase: [], //pra cada letra
	tam_frase: 0, //tamanho da frase escolhida
	frase_pos: 0, //posição da ultima letra digitada
	tam_frase_original: 0,
	usando_alternativo: false, //flag para saber se está usando código alternativo
	frase_original_backup: "", //backup da frase original
	trocarCodigo: function(codigo_alternativo){ //troca entre código normal e alternativo mantendo estado
		// Salva o estado atual das cores até frase_pos
		var cores_salvas = [];
		for(var i = 0; i < frase_pos; i++) {
			cores_salvas[i] = frase[i].cor;
		}
		// Salva a posição atual
		var pos_atual = frase_pos;
		// Troca a frase
		frase_original_backup = frase_escolhida;
		frase_escolhida = codigo_alternativo;
			// Atualiza tamanhos com base na nova frase
			tam_frase_original = string_length(frase_escolhida);
			// Recria o array de letras
			frase = [];
			for(var i=0; i < tam_frase_original; i++) {
			if(string_char_at(frase_escolhida, i + 1) != " " && string_char_at(frase_escolhida, i + 1) != "ª" && string_char_at(frase_escolhida, i + 1) != "º"){
				var cor_atual = "branco";
				var indice_array = array_length(frase);
				if(indice_array < array_length(cores_salvas)) {
					cor_atual = cores_salvas[indice_array];
				}
				array_push(frase, {
					letra: string_char_at(frase_escolhida, i + 1),
					cor: cor_atual
				});
			}
		}
			// Atualiza tamanho real e reposiciona cursor de forma segura
			tam_frase = array_length(frase);
			frase_pos = min(pos_atual, tam_frase);
		usando_alternativo = true;
	},
	reverterCodigo: function(codigo_original){ //reverte para o código original mantendo estado
		// Salva o estado atual das cores até frase_pos
		var cores_salvas = [];
		for(var i = 0; i < frase_pos; i++) {
			cores_salvas[i] = frase[i].cor;
		}
		// Salva a posição atual
		var pos_atual = frase_pos;
		// Restaura a frase original
		frase_escolhida = codigo_original;
			// Atualiza tamanhos com base na frase original
			tam_frase_original = string_length(frase_escolhida);
			// Recria o array de letras
			frase = [];
			for(var i=0; i < tam_frase_original; i++) {
			if(string_char_at(frase_escolhida, i + 1) != " " && string_char_at(frase_escolhida, i + 1) != "ª" && string_char_at(frase_escolhida, i + 1) != "º"){
				var cor_atual = "branco";
				var indice_array = array_length(frase);
				if(indice_array < array_length(cores_salvas)) {
					cor_atual = cores_salvas[indice_array];
				}
				array_push(frase, {
					letra: string_char_at(frase_escolhida, i + 1),
					cor: cor_atual
				});
			}
		}
			// Atualiza tamanho real e reposiciona cursor de forma segura
			tam_frase = array_length(frase);
			frase_pos = min(pos_atual, tam_frase);
			usando_alternativo = false;
	},
	initFrase: function(codigos){ //pra inicializar tudo
		frase_escolhida_index += 1;
		frase_escolhida = codigos[frase_escolhida_index];
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
		usando_alternativo = false;
		frase_original_backup = "";
	}
}

tempo=0;
