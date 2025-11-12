// Configurações de layout das caixas (textos descritivos)
x_inicial_caixas = 350; // posição X inicial dos textos
y_caixas = 450; // posição Y inicial dos textos

largura_caixa = 180;
altura_caixa = 100;
espaco_caixas = 300; // espaço horizontal entre as caixas

// Título com efeito digitado
titulo_completo = "Escolha sua dificuldade...";
titulo_mostrado = "";
velocidade_titulo = 2; // frames por letra
contador_titulo = 0;
indice_titulo = 0;
titulo_finalizado = false;

// Posição do título no canto inferior direito
x_titulo = room_width - 550; // margem da borda direita
y_titulo = room_height - 175; // margem da borda inferior

// Criar cores personalizadas
cor_facil = make_color_rgb(187, 255, 187);
cor_medio = make_color_rgb(239, 224, 111);
cor_dificil = make_color_rgb(108, 12, 41);

// Caixas de dificuldade (textos descritivos)
caixas = [
    {nome: "Quackstagiário", cor: cor_facil},
    {nome: "Quack Júnior", cor: cor_medio},
    {nome: "Quack Supremo", cor: cor_dificil}
];

// Fonte
fonte_titulo = f_medodica;
fonte_texto = f_medodica;

// Criar 3 botões de escolha
// Dimensões dos botões
largura_botao = sprite_get_width(S_BotaoEscolha);
altura_botao = sprite_get_height(S_BotaoEscolha);

// Coordenadas iniciais dos botões (move todos juntos)
espaco_botoes = 300; // distância entre os botões

// Centraliza horizontalmente automaticamente, considerando largura dos 3 botões + espaço
x_inicial = (room_width - (3 * largura_botao + 2 * espaco_botoes)) / 2;

// Ajusta verticalmente para ficar mais central na tela
y_inicial = room_height / 2 - altura_botao - 50; 
// -> diminuir o valor move os botões para cima
// -> aumentar o valor move os botões para baixo

// Criar 3 instâncias de botões, cada uma com seu nível
for (var i = 0; i < 3; i++) {
    var botao = instance_create_layer(
        x_inicial + i * (largura_botao + espaco_botoes),
        y_inicial,
        "Instances",
        obj_BotaoEscolha
    );
    botao.nivel_alvo = i + 1; // define o nível (1, 2 e 3)
}