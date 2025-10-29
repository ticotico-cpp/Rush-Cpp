 if(draw_get_font() == f_grande) {
	draw_set_font(f_padrao);
}
 if(draw_get_halign() == fa_center) {
	draw_set_halign(fa_left);
}
var marcador = obj_Marcador; //pra posicionar o marcador no lugar certo
 
 if(tela=="full" && !gameover  && !vitoria) { //se tiver coisa na tela
	 var linha = 1; //qual linha ta
	 var letra_index = 0; //índice para o array de letras (sem espaços)
	 var tab = 0; // pra dar o espaço do tab
	 var last_break=0; //pra múltiplos tabs
	 var findpos = false; //se achou onde ficaria o marcador
	 var poserro=0; //pra localização e contole no array "errados"
	 for(var i=0; i<frases.tam_frase_original; i++){
		 var quebra = i; //pra andar com a frase
		 var coluna = 30+(quebra-last_break)*14+tab; //conta pra achar a posição em x
		 var char_atual = string_char_at(frases.frase_escolhida, i + 1);
		 if(coluna%560==0) { //se chegar no limite da tela, quebra pra linha de baixo
			 linha++;
			 quebra = 0;
			 coluna = 30+(quebra-last_break)*14+tab;
		 }
		 if(char_atual == " ") {
			 //se for espaço, exibe em branco
			 draw_set_color(c_white);
			 draw_text(coluna, 30*linha, " ");
		 } else if(char_atual == "ª"){ //equivalente ao \n
			 linha++;
			 last_break = quebra;
			 quebra=0;
			 tab=0;
		 } else if(char_atual == "º"){ //equivalente ao \t
			 tab+=56;
		 } else {
			 //se for letra, aplica a cor correspondente
			 if(frases.frase[letra_index].cor == "branco") {
				 if(!findpos){
					marcador.x = coluna;
					marcador.y = linha*30+3;
					findpos = true;
					if(marcador.image_index < 1){
						draw_set_color(c_black);
					} else {
						draw_set_color(c_white);
					}
				 } else {
					draw_set_color(c_white);
				 }
			 } else if(frases.frase[letra_index].cor == "azul") {
				 draw_set_color(c_blue);
			 } else if(frases.frase[letra_index].cor == "vermelho") {
				 draw_set_color(c_red);
				 draw_text(coluna, 30*linha-15, errados[poserro]); // pra mostrar certinho qual letra que foi digitada errada
				 poserro++;
				 draw_set_color(c_grey);
			 }
			 draw_text(coluna, 30*linha, char_atual);
			 letra_index++; //avança para próxima letra no array
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
if(vitoria) { //Tela de Game Over
	instance_destroy(marcador);
	draw_set_font(f_grande);
	draw_set_color(c_green);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "VITORIA");
}