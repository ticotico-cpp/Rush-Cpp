// Se clicar no pato e ele não estiver pulando
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !pato_pulando) {
    pato_pulando = true;
    sprite_index = S_PatoJump;
    image_index = 0;
    image_speed = 1;
    audio_play_sound(Snd_pato, 1, false);
}

// Quando a animação de pulo terminar, volta para Idle
if (pato_pulando && image_index >= image_number - 1) {
    pato_pulando = false;
    sprite_index = S_PatoIdle;
    image_speed = 1;
}