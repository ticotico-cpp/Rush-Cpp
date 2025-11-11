// Margem vertical entre o botão e o texto descritivo
var margem_texto = 10; // Ajuste: aumentar -> mais distante do botão, diminuir -> mais próximo

// Desenhar nomes dos níveis (textos descritivos) alinhados aos botões
for (var i = 0; i < array_length(caixas); i++) {
    var caixa = caixas[i];

    // Mesma posição X do botão correspondente
    var cx = x_inicial + i * (largura_botao + espaco_botoes);
    // Posiciona o texto logo abaixo do botão
    var cy = y_inicial + altura_botao + margem_texto;

    draw_set_color(caixa.cor);
    draw_set_font(fonte_texto);

    // Centraliza o texto horizontalmente em relação ao botão
    draw_text(cx + largura_botao/2 - string_width(caixa.nome)/2, cy, caixa.nome);
}

// Desenhar título com efeito digitado (fixo no canto inferior direito)
draw_set_font(fonte_titulo);
draw_set_color(c_white);
draw_text(x_titulo - string_width(titulo_mostrado), y_titulo, titulo_mostrado);