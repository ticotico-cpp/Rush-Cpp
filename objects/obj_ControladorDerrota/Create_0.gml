display_set_gui_size(1920, 1080);

// Texto principal (pulso)
titulo = "DERROTA!";
titulo_escala = 1;
titulo_vel_pulso = 0.03; // velocidade da oscilação
titulo_tempo = 0;

// Texto do pato (efeito de digitação)
fala_completa = "Demissão? Não, só um roolback de carreira. Tente outra vez, ou o RH vai te substituir por uma IA!";
fala_mostrada = "";
fala_velocidade = 0.8; // menor = mais rápido
fala_timer = 0;

// Controle de digitação
indice = 0;

// Texto de instrução
instrucao = "Pressione Enter para continuar";

// Configurações visuais
cor_instrucao = make_color_rgb(50, 50, 50);
fonte_instrucao = f_medodica;

// Escala do texto 
escala_instrucao = 0.1;
