// Inherit the parent event
event_inherited();

codigo_cpp_medio = [
    "int quadrado(int x){ªºreturn x * x;ª}ªint main(){ªºfor(int i=1; i<=10; i++){ªººif(i % 2 == 0){ªºººcout << quadrado(i) << ' ';ªºº}ªººelse{ªºººcout << i << ' ';ªºº}ªº}ªºreturn 0;ª}",
    "int somaVetor(int v[], int n){ªºint soma = 0;ªºfor(int i = 0; i < n; i++){ªººsoma += v[i];ªº}ªºreturn soma;ª}ªint main(){ªºint valores[5] = {2,4,6,8,10};ªºcout << somaVetor(valores,5);ªºreturn 0;ª}",
    "int main(){ªºint a, b;ªºcin >> a >> b;ªºif(a > b){ªººcout << 'A maior';ªº}ªºelse if(a == b){ªººcout << 'Iguais';ªº}ªºelse{ªººcout << 'B maior';ªº}ªºreturn 0;ª}",
    "void contagem(){ªºfor(int i=10; i>=0; i--){ªººcout << i << ' ';ªº}ªºcout << 'Fim!';ª}ªint main(){ªºcontagem();ªºreturn 0;ª}"
];

codigo_cpp = codigo_cpp_medio;