// Implementar aqui a lógica para levar o jogador
// ao nível correspondente ao botão clicado
// Livre para interpretar nivel_alvo como achar melhor (ir para rooms diferentes, 
// instanciar objetos de dificuldade, alterar parâmetros de gameplay etc.) 

// Cada instância de obj_botaoEscolha tem uma variável "nivel_alvo"
// (1, 2 ou 3), definida pelo obj_ControladorSelecao no Create Event
// Assim, não precisamos de 3 objetos diferentes
// A ideia é que ao clicar, este botão leve o jogador para o nível correto
// independentemente da forma como programar 

/// Exemplo do comportamento esperado:
/// if (nivel_alvo == 1) -> ir para o nível 1 
/// if (nivel_alvo == 2) -> ir para o nível 2
/// if (nivel_alvo == 3) -> ir para o nível 3
