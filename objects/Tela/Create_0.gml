codigo_cpp = [ //array com trechos de código
    "int main() { return 0; }",
    "cout << 'Hello, world!';",
    "for(int i = 0; i < 10; i++) { cout << i; }",
    "if(x > 0) cout << 'positivo';",
    "while(true) { break; }",
    "int soma = a + b;",
    "string nome = 'Tiago';",
    "bool ativo = true;",
    "for(auto n : numeros) cout << n;",
    "vector<int> v = {1, 2, 3};",
    "cout << sqrt(9);",
    "if(a == b) cout << 'iguais'; else cout << 'diferentes';",
    "int resultado = pow(2, 8);",
    "cout << fixed << setprecision(2) << pi;",
    "return x * y + z;",
	""
];

tela = "clear"; //controle se tem coisa na tela ou não
erro = 0; //contagem de erro
trava = false;

frases = { //struct
	frase_escolhida_index: 0, //indice da frase escolhida aleatoriamente
	frase_escolhida: "", //frase escolhida aleatoriamente
	frase: [], //pra cada letra
	tam_frase: 0, //tamanho da frase escolhida
	frase_pos: 0, //posição da ultima letra digitada
	tam_frase_original: 0,
	initFrase: function(codigos){ //pra inicializar tudo
		frase_escolhida_index = irandom(array_length(codigos)-1);
		frase_escolhida = codigos[frase_escolhida_index];
		array_delete(codigos, frase_escolhida_index, 1); //deleta a escolhida pra não puxar ela denovo
		tam_frase = string_length(frase_escolhida);
		tam_frase_original = tam_frase;
		frase = []; //array vazio que será preenchido apenas com letras (sem espaços)
		for(var i=0;i<tam_frase; i++) { //inicia o vetor com todas as letras
			if(string_char_at(frase_escolhida, i + 1) != " "){
				array_push(frase, {
					letra: string_char_at(frase_escolhida, i + 1),
					cor: "branco"
				});
			}
		}
		tam_frase = array_length(frase); //atualiza tam_frase para o tamanho real do array (sem espaços)
		frase_pos = 0;
	}
}