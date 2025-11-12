draw_set_font(f_medodicaGrande);
draw_set_color(c_white);

// Posição e pulso do título 
var titulo_x = global.GUI_BASE_W / 2;
var titulo_y = global.GUI_BASE_H / 2 + 100;

draw_text_transformed(titulo_x - string_width(titulo) * titulo_escala / 2, titulo_y, titulo, titulo_escala, titulo_escala, 0);

// Fala do pato (ajustar para ficar dentro do balão)
draw_set_font(f_medodica);
draw_set_color(c_white);

var fala_x = 370; // ajuste horizontal
var fala_y = global.GUI_BASE_H - 240;
var largura_max = global.GUI_BASE_W - fala_x * 2;
var espacamento_linha = 40;

draw_text_ext(fala_x, fala_y, fala_mostrada, espacamento_linha, largura_max);

// Exibe a instrução 
draw_set_font(fonte_instrucao);
draw_set_color(cor_instrucao);

var instrucao_largura = string_width(instrucao);
var instrucao_altura = string_height(instrucao);
var instrucao_x = 165;  
var instrucao_y = 100;  

draw_text(instrucao_x, instrucao_y, instrucao);