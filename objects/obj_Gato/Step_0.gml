// Se clicar no gato e o carinho não estiver ativo
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id) && !carinho_ativo) {
    carinho_ativo = true; // ativa flag de carinho
    sprite_index = S_GatoCarinho; // troca a animação
    image_index = 0; // começa do início
    image_speed = 1; // garante que a animação rode
    
    // Som de ronrono ao interagir com o gato (com volume aumentado)
    var som_id = audio_play_sound(Snd_gato, 1, false);
    audio_sound_gain(som_id, 5, 0); // aumenta o volume instantaneamente -> para deixar no mesmo nível que o pato
}

// Verifica se a animação de carinho terminou
if (carinho_ativo && image_index >= sprite_get_number(sprite_index) - 1) {
    sprite_index = S_GatoIdle; // volta para Idle
    image_speed = 1;
    carinho_ativo = false; // desativa flag
}