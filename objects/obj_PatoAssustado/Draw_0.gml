if (visible) {
    // Desenha o pato
    draw_self();

    // Desenha a caixa de texto
    var caixa_sprite = S_AlertaPausa;

    // Posição ajustável
    var caixa_x = x - 980;
    var caixa_y = y + 130;

    draw_sprite(caixa_sprite, 0, caixa_x, caixa_y);
}