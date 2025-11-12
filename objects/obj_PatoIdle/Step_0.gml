// Quando a animação de pulo termina
if (pato_pulando && image_index >= image_number - 1 ) {
    sprite_index = S_PatoIdle; // volta pro idle
    image_speed = 1;
    pato_pulando = false; // desativa flag
}
