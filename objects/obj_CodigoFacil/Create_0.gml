// Inherit the parent event
event_inherited();

codigo_cpp_facil = [
    "int main(){ªºint soma = 0;ªºfor(int i = 0; i < 5; i++){ªººsoma += i;ªº}ªºcout << soma;ªºreturn 0;ª}",
    "void mensagem(){ªºcout << 'Ola mundo!';ªºcout << 'Bem vindo ao treino de digitacao!';ª}ªint main(){ªºmensagem();ªºreturn 0;ª}",
    "int dobro(int x){ªºreturn x * 2;ª}ªint main(){ªºfor(int i = 1; i <= 10; i++){ªººcout << dobro(i) << ' ';ªº}ªºreturn 0;ª}",
    "int main(){ªºint numeros[5] = {1,2,3,4,5};ªºint soma = 0;ªºfor(int i=0; i<5; i++){ªººsoma += numeros[i];ªº}ªºcout << soma;ªºreturn 0;ª}"
];

codigo_cpp = codigo_cpp_facil;
array_insert(codigo_cpp, array_lenght(codigo_cpp), "");

global.tempo*=0.8;
