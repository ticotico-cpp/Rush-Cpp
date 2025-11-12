// Atualiza o pulso do título
titulo_tempo += titulo_vel_pulso;
titulo_escala = 1 + 0.05 * sin(titulo_tempo);

// Atualiza a digitação da fala do pato
if (indice < string_length(fala_completa)) {
    fala_timer += fala_velocidade;
    if (fala_timer >= 1) {
        fala_timer = 0;
        indice += 1;
        fala_mostrada = string_copy(fala_completa, 1, indice);
    }
}

// Voltar para a tela de seleção de níveis ao pressionar Enter
if (keyboard_check_pressed(vk_enter)) {
    room_goto(SelecaoDificuldade);
}