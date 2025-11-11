// Reproduz o som do pato no início da room (uma vez)
audio_play_sound(Snd_pato, 1, false);

// Flag para controle do som de digitação
som_teclado_tocando = false;

show_debug_message("DEBUG: obj_ControladorTutorial criado com sucesso!");

// Textos que vão aparecer nas duas caixas
caixa1_texto = "Quá quá! Olá, novato do teclado! #Pode me chamar de Debuggy! Vou te acompanhar #nessa jornada rumo à tão sonhada promoção #como programador. #Você começa como Estagiário, mas se mandar bem, #pode virar Dev Júnior, Pleno, e quem sabe #até Sênior! Seu trabalho é bem simples... ";
caixa2_texto = "Basta digitar exatamente o que aparecer na tela: letras, números, símbolos, #colchetes, chaves... tudo! Código bagunçado não sobe pra produção! #Só não precisa se preocupar com as quebras de linha. #Errou alguma coisa? É só apagar e tentar de novo (ninguém é perfeito, nem os compiladores). #Ah, e repare nas cores: vermelho significa erro, azul, acerto. Simples assim! #Cuidado também com sua barra de energia... ela não pode descer! #Para recarregá-la, pressione ESC para voltar a atenção para sua mesa. #Lá, você pode acariciar nosso pequeno gatinho. Ele vai te ajudar a se animar. #O cansaço pode atrapalhar sua legibilidade! #Não deixe em hipótese alguma essa barra zerar! Senão ficará ocioso, e... #bem, digamos que o RH não gosta disso. #Ah, e administre bem o tempo, hein! Não gostamos de moleza. Cada fase tem um limite: termine toda sua demanda antes dele esgotar. #Pronto pra digitar até seus dedos pegarem fogo? Então bora lá! Esse patinho #acredita em você! Quá quá quá!";

// Controladores de texto
caixa1_mostrar = ""; // O que será exibido na tela (vai sendo montado aos poucos)
caixa2_mostrar = "";

velocidade = 0.03; // tempo entre cada caractere (em segundos)
indice = 0; // posição atual da letra que está sendo escrita
etapa = 1; // 1 = caixa1, 2 = caixa2
timer = 0; // controla o tempo de escrita

// Configurações visuais
cor_texto = $944665;   // Cor do texto
fonte_texto = f_medodica; // Fonte usada

// Texto de instrução
instrucao = "Pressione TAB para continuar";

// Flags para indicar fim da escrita
caixa1_pronta = false;
caixa2_pronta = false;
