display_set_gui_size(1920, 1080);

// Tamanho base fixo
global.GUI_BASE_W = 1920;
global.GUI_BASE_H = 1080;

// Força o GUI a usar esse tamanho, e evita autoescala
display_set_gui_size(global.GUI_BASE_W, global.GUI_BASE_H);
surface_resize(application_surface, global.GUI_BASE_W, global.GUI_BASE_H);

// Texto principal (pulso)
titulo = "VITÓRIA!";
titulo_escala = 1;
titulo_vel_pulso = 0.03; // velocidade da oscilação
titulo_tempo = 0;

// Texto do pato (efeito de digitação)
fala_completa = "Tarefa entregue sem stress, isso sim que é agilidade. Nem precisei dar um 'debug quático' para te ajudar... Parabéns!!";
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