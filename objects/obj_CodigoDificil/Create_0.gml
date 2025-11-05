// Inherit the parent event
event_inherited();

codigo_cpp_dificil = [
    "int fatorial(int n){ªºif(n <= 1) return 1;ªºreturn n * fatorial(n - 1);ª}ªint main(){ªºfor(int i = 1; i <= 10; i++){ªººcout << fatorial(i) << ' ';ªº}ªºreturn 0;ª}",
    "vector<int> numeros = {1,2,3,4,5};ªfor(int i = 0; i < numeros.size(); i++){ªºif(numeros[i] % 2 == 0){ªººcout << numeros[i] << ' par';ªº}ªºelse{ªººcout << numeros[i] << ' impar';ªº}ª}",
    "int somaPositivos(vector<int> v){ªºint soma = 0;ªºfor(auto x : v){ªººif(x > 0) soma += x;ªº}ªºreturn soma;ª}ªint main(){ªºvector<int> valores = {-3,5,7,-1,4};ªºcout << somaPositivos(valores);ªºreturn 0;ª}",
    "bool primo(int n){ªºif(n < 2) return false;ªºfor(int i=2; i*i<=n; i++){ªººif(n % i == 0) return false;ªº}ªºreturn true;ª}ªint main(){ªºfor(int i=1; i<=20; i++){ªººif(primo(i)) cout << i << ' ';ªº}ªºreturn 0;ª}"
];

codigo_cpp = codigo_cpp_dificil;

array_insert(codigo_cpp, array_lenght(codigo_cpp), "");

global.tempo*=0.8;