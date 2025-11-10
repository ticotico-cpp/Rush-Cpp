// Configurações gerais
draw_set_font(f_medodica);
draw_set_color(cor_texto);

// Parâmetros de layout
var espacamento_linha = 40;

// Caixa de texto 1 (topo)

// Margens independentes (esquerda e direita)
var margem_caixa1_esq = 700; // quanto maior → mais pra direita
var margem_caixa1_dir = 150; // quanto menor → vai mais pra direita (aumenta largura)
var largura_max_caixa1 = display_get_gui_width() - margem_caixa1_esq - margem_caixa1_dir;

// Posição vertical
var caixa1_y = 40;

// Substitui # por quebras de linha reais (\n)
var caixa1_texto_fmt = string_replace_all(caixa1_mostrar, "#", "\n");

// Desenha a caixa 1
draw_text_ext(margem_caixa1_esq, caixa1_y, caixa1_texto_fmt, espacamento_linha, largura_max_caixa1);

// Caixa de texto 2 (inferior)
// Margens independentes (esquerda e direita)
var margem_caixa2_esq = 170;
var margem_caixa2_dir = 170;
var largura_max_caixa2 = display_get_gui_width() - margem_caixa2_esq - margem_caixa2_dir;

// Posição vertical
var caixa2_y = display_get_gui_height() - 750;

// Substitui # por quebras de linha reais (\n)
var caixa2_texto_fmt = string_replace_all(caixa2_mostrar, "#", "\n");

// Desenha a caixa 2
draw_text_ext(margem_caixa2_esq, caixa2_y, caixa2_texto_fmt, espacamento_linha, largura_max_caixa2);

// Instrução (inferior direito)
if ((etapa == 1 && caixa1_pronta) || (etapa == 2 && caixa2_pronta)) {
    draw_set_color(make_color_rgb(50, 50, 50));

    var instrucao_largura = string_width(instrucao);
    var instrucao_altura = string_height(instrucao);
    var instrucao_x = display_get_gui_width() - instrucao_largura - 200;
    var instrucao_y = display_get_gui_height() - instrucao_altura - 50;

    draw_text(instrucao_x, instrucao_y, instrucao);
}
