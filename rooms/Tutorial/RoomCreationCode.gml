//Posição do pato na room
var pato = instance_create_layer(0, 0, "Instances", obj_PatoWalk);
pato.image_xscale = 1.9;
pato.image_yscale = 1.9;
pato.x = 280;
pato.y = room_height - sprite_get_height(pato.sprite_index)*1.9 -850;