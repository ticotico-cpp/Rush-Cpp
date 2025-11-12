if (nivel_alvo == 1) {
	instance_create_layer(350, 160, "Instances_1", obj_CodigoFacil);
}
if (nivel_alvo == 2) {
	instance_create_layer(350, 160, "Instances_1", obj_CodigoMedio);
}
if (nivel_alvo == 3) {
	instance_create_layer(350, 160, "Instances_1", obj_CodigoDificil);
}

room_goto(Room1);
global.destruir = true;