// Posição do patinho
var pato = instance_create_layer(0, 0, "Instances", obj_PatoIdle);
pato.x = 1930;
pato.y = room_height - sprite_get_height(pato.sprite_index) -80;
pato.image_xscale = -1; // espelha a imagem