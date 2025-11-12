// Posição do pato na rooom
var pato = instance_create_layer(0, 0, "Instances", obj_PatoDerrota);

// Escala
pato.image_xscale = 2;
pato.image_yscale = 2;

// Posição base no canto inferior esquerdo
pato.x = 138; // quanto maior → mais à direita
pato.y = room_height - 303; // quanto menor → mais para cima
