// Incrementa o temporizador com base no tempo real
timer += delta_time / 1000000;

// Etapa 1: escreve o primeiro texto
if (etapa == 1) {
    if (keyboard_check_pressed(vk_tab)) {
        if (!caixa1_pronta) {
            // Pula a digitação e mostra tudo
            indice = string_length(caixa1_texto);
            caixa1_mostrar = caixa1_texto;
            caixa1_pronta = true;
        } else {
            // Passa para a segunda caixa
            etapa = 2;
            indice = 0;
            timer = 0;
        }
    } else if (indice < string_length(caixa1_texto) && timer > velocidade) {
        indice++;
        caixa1_mostrar = string_copy(caixa1_texto, 1, indice);
        timer = 0;

        // Marca como pronta quando terminar
        if (indice >= string_length(caixa1_texto)) caixa1_pronta = true;
    }
}

// Etapa 2: escreve o segundo texto
else if (etapa == 2) {
    if (keyboard_check_pressed(vk_tab)) {
        if (!caixa2_pronta) {
            // Pula a digitação e mostra tudo
            indice = string_length(caixa2_texto);
            caixa2_mostrar = caixa2_texto;
            caixa2_pronta = true;
        } else {
            // Já terminou tudo → vai para a room principal
            room_goto(Room1);
        }
    } else if (indice < string_length(caixa2_texto) && timer > velocidade) {
        indice++;
        caixa2_mostrar = string_copy(caixa2_texto, 1, indice);
        timer = 0;

        // Marca como pronta quando terminar
        if (indice >= string_length(caixa2_texto)) caixa2_pronta = true;
    }
}