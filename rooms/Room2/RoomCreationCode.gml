sprite_prefetch(TextureBackgroundRoom2);

// Criação dos personagens na Room
// Gato: canto esquerdo, um pouco abaixo do centro
var gato = instance_create_layer(room_width * -0.01, room_height * 0.42, "Instances", obj_GatoIdle);
gato.image_xscale = 1; // mantém o lado normal

// Pato: canto direito, um pouco abaixo do centro
var pato = instance_create_layer(room_width * 0.90, room_height * 0.59, "Instances", obj_PatoIdle);
pato.image_xscale = -1; // espelha para olhar para o gato

