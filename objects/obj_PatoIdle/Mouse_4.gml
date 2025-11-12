// Se clicar no pato e ele não estiver pulando
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !pato_pulando) {
    pato_pulando = true; // ativa flag
    sprite_index = S_PatoJump; // troca pra animação de pulo
    image_index = 0; // começa do início
    image_speed = 1; // garante que a animação rode

    // Toca o som do pato (grasnido)
    var som_id = audio_play_sound(Snd_pato, 1, false);
    audio_play_sound(Snd_pato, 1, false);
}

