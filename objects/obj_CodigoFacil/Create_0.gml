// Inherit the parent event
event_inherited();

codigo_cpp_facil = [
    "int main(){ªºint soma = 0;ªºfor(int i = 0; i < 5; i++){ªººsoma += i;ªº}ªºcout << soma;ªºreturn 0;ª}",
    "void mensagem(){ªºcout << 'Ola mundo!';ªºcout << 'Bem vindo ao treino de digitacao!';ª}ªint main(){ªºmensagem();ªºreturn 0;ª}",
    "int dobro(int x){ªºreturn x * 2;ª}ªint main(){ªºfor(int i = 1; i <= 10; i++){ªººcout << dobro(i) << ' ';ªº}ªºreturn 0;ª}",
    "int main(){ªºint numeros[5] = {1,2,3,4,5};ªºint soma = 0;ªºfor(int i=0; i<5; i++){ªººsoma += numeros[i];ªº}ªºcout << soma;ªºreturn 0;ª}"
];

codigo_cpp_facil_alt = [ 
	"1nt m41n(){ªº1nt s0m4 = 0;ªºf0r(1nt | = 0; | < 5; |++){ªººs0m4 += |;ªº}ªºc0ut << s0m4;ªºr3turn 0;ª}", 
	"v01d m3ns4g3m(){ªºc0ut << '0l4 mund0!';ªºc0ut << 'B3m v1nd0 40 tr31n0 d3 d1g1t4c40!';ª}ª1nt m41n(){ªºm3ns4g3m();ªºr3turn 0;ª}", 
	"1nt d0br0(1nt >){ªºr3turn > * 2;ª}ª1nt m41n(){ªºf0r(1nt | = 1; | <= 10; |++){ªººc0ut << d0br0(|) << ' ';ªº}ªºr3turn 0;ª}", 
	"1nt m41n(){ªº1nt num3r0s[5] = {1,2,3,4,5};ªº1nt s0m4 = 0;ªºf0r(1nt |=0; |<5; |++){ªººs0m4 += num3r0s[|];ªº}ªºc0ut << s0m4;ªºr3turn 0;ª}" 
];

codigo_cpp = codigo_cpp_facil;
codigo_alt = codigo_cpp_facil_alt;
