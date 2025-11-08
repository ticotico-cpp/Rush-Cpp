// Botão Iniciar
var btn = instance_create_layer(room_width / 2, room_height / 2, "UI", obj_BotaoIniciar);

// Reduz o tamanho do botão (40% do original)
btn.image_xscale = 0.4;
btn.image_yscale = 0.4;

// Centraliza o botão na tela (independente da origem do sprite)
var spr_btn = btn.sprite_index;
if (spr_btn != noone) {
    var w = sprite_get_width(spr_btn) * btn.image_xscale;
    var h = sprite_get_height(spr_btn) * btn.image_yscale;
    btn.x = (room_width - w) / 2;
    btn.y = (room_height - h) / 2;
}

// Pato 
var pato = instance_create_layer(0, 0, "Instances", obj_PatoMenu); pato.x = -40; // move bem pra esquerda 
pato.y = room_height - pato.sprite_height + 10; // desce até perto do fundo