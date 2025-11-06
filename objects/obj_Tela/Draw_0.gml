 if(draw_get_font() == f_grande) {
	draw_set_font(f_padrao);
}
 if(draw_get_halign() == fa_center) {
	draw_set_halign(fa_left);
}
var marcador = obj_Marcador; //pra posicionar o marcador no lugar certo
 
 if(tela=="full" && !gameover  && !vitoria) { //se tiver coisa na tela
	 var escala_x = room_width / 900.0; // 2.4
	 var escala_y = room_height / 700.0; // 1.8
	  var margem_x = 30 * escala_x; // margem inicial
	 var espacamento_char = 14 * escala_x; // espaçamento entre caracteres
	 var altura_linha = 30 * escala_y; // altura de cada linha
	 var limite_largura = 560 * escala_x; // limite antes de quebrar linha
	 var espacamento_tab = 56 * escala_x; // espaçamento do tab
	 var offset_erro = 17 * escala_y; // offset para mostrar erro
	 var offset_marcador = 3 * escala_y; // offset do marcador
	 
	 var linha = 1; //qual linha ta
	 var letra_index = 0; //índice para o array de letras (sem espaços)
	 var letras_total = array_length(frases.frase); // total de letras com cor
	 var tab = 0; // pra dar o espaço do tab
	 var last_break=0; //pra múltiplos tabs
	 var findpos = false; //se achou onde ficaria o marcador
	 var poserro=0; //pra localização e contole no array "errados"
	 for(var i=0; i<frases.tam_frase_original; i++){
		 var quebra = i; //pra andar com a frase
		 var coluna = margem_x+(quebra-last_break)*espacamento_char+tab; //conta pra achar a posição em x
		 var char_atual = string_char_at(frases.frase_escolhida, i + 1);
		 if(char_atual == " ") {
			 //se for espaço, exibe em branco
			 draw_set_color(c_white);
			 draw_text(coluna, altura_linha*linha, " ");
		 } else if(char_atual == "ª"){ //equivalente ao \n
			 linha++;
			 last_break = quebra;
			 quebra=0;
			 tab=0;
		 } else if(char_atual == "º"){ //equivalente ao \t
			 tab+=espacamento_tab;
		 } else {
			  //se for letra, aplica a cor correspondente (com verificação de limites)
			 if(letra_index < letras_total && frases.frase[letra_index].cor == "branco") {
				 if(!findpos){
					marcador.x = coluna;
					marcador.y = linha*altura_linha+offset_marcador;
					findpos = true;
					if(marcador.image_index < 1){
						draw_set_color(c_black);
					} else {
						draw_set_color(c_white);
					}
				 } else {
					draw_set_color(c_white);
				 }
			 } else if(letra_index < letras_total && frases.frase[letra_index].cor == "azul") {
				 draw_set_color(c_blue);
			 } else if(letra_index < letras_total && frases.frase[letra_index].cor == "vermelho") {
				 draw_set_color(c_red);
				 draw_text(coluna, altura_linha*linha-offset_erro, errados[poserro]); 
				 poserro++;
				 draw_set_color(c_grey);
			 	} else {
				 // Fallback seguro caso o índice esteja fora do array ou cor desconhecida
				 draw_set_color(c_white);
				}
			 draw_text(coluna, altura_linha*linha, char_atual);
			 if(letra_index < letras_total) {
				 letra_index++; // avança somente se ainda houver letra correspondente
			 }
		 }
	 }
}

if(gameover) { //Tela de Game Over
	instance_destroy(marcador);
	draw_set_font(f_grande);
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "GAME OVER");
}
if(vitoria) { //Tela de Vitória
	instance_destroy(marcador);
	draw_set_font(f_grande);
	draw_set_color(c_green);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "VITORIA");
}