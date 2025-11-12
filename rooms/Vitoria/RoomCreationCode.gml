// Posição do pato na room
var pato = instance_create_layer(150, room_height - 200, "Instances", obj_PatoIdle);

// Define a sprite que ele deve usar
pato.sprite_index = S_PatoJump;

// Define o tamanho sem alterar o sprite real
pato.image_xscale = 0.8 // menor que 1 = menor tamanho, maior que 1 = maior
pato.image_yscale = 0.8

// Ajuste fino de posição 
pato.x = 130; // distância da esquerda
pato.y = room_height - 290; // distância do topo (use pra subir/descer)
