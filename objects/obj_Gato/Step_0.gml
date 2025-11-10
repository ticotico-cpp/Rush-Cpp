// Se clicar no gato
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    //colocar aqui som ao interagir
    sprite_index = GatoCarinho;
    image_index = 0;
    image_speed = 1;
    animacao_timer = animacao_duracao; // reinicia o tempo do carinho
}

// Contagem regressiva do tempo de carinho
if (animacao_timer > 0) {
    animacao_timer--;
} else {
    sprite_index = GatoIdle;
    image_speed = 1;
}