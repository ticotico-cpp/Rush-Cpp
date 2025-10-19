 if(tela=="full") { //se tiver coisa na tela
	 var linha = 1;
	 var letra_index = 0; //índice para o array de letras (sem espaços)
	 for(var i=0; i<frases.tam_frase_original; i++){
		 var quebra = i;
		 var coluna = 30+quebra*14;
		 var char_atual = string_char_at(frases.frase_escolhida, i + 1);
		 if(coluna%575==0) {
			 linha++;
			 quebra = 0;
			 coluna = 30+quebra*14;
		 }
		 if(char_atual == " ") {
			 //se for espaço, exibe em branco
			 draw_set_color(c_white);
			 draw_text(coluna, 30*linha, " ");
		 } else {
			 //se for letra, aplica a cor correspondente
			 if(frases.frase[letra_index].cor == "branco") {
				 draw_set_color(c_white);
			 } else if(frases.frase[letra_index].cor == "azul") {
				 draw_set_color(c_blue);
			 } else if(frases.frase[letra_index].cor == "vermelho") {
				 draw_set_color(c_red);
			 }
			 draw_text(coluna, 30*linha, char_atual);
			 letra_index++; //avança para próxima letra no array
		 }
		 
		 
	 }
}