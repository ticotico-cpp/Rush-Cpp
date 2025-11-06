// Inherit the parent event
event_inherited();

codigo_cpp_medio = [
    "int quadrado(int x){ªºreturn x * x;ª}ªint main(){ªºfor(int i=1; i<=10; i++){ªººif(i % 2 == 0){ªºººcout << quadrado(i) << ' ';ªºº}ªººelse{ªºººcout << i << ' ';ªºº}ªº}ªºreturn 0;ª}",
    "int somaVetor(int v[], int n){ªºint soma = 0;ªºfor(int i = 0; i < n; i++){ªººsoma += v[i];ªº}ªºreturn soma;ª}ªint main(){ªºint valores[5] = {2,4,6,8,10};ªºcout << somaVetor(valores,5);ªºreturn 0;ª}",
    "int main(){ªºint a, b;ªºcin >> a >> b;ªºif(a > b){ªººcout << 'A maior';ªº}ªºelse if(a == b){ªººcout << 'Iguais';ªº}ªºelse{ªººcout << 'B maior';ªº}ªºreturn 0;ª}",
    "void contagem(){ªºfor(int i=10; i>=0; i--){ªººcout << i << ' ';ªº}ªºcout << 'Fim!';ª}ªint main(){ªºcontagem();ªºreturn 0;ª}"
];
codigo_cpp_medio_alt = [ 
	"1nt qu4dr4d0(1nt >){ªºr3turn > * >;ª}ª1nt m41n(){ªºf0r(1nt |=1; |<=10; |++){ªºº1f(| % 2 == 0){ªºººc0ut << qu4dr4d0(|) << ' ';ªºº}ªºº3ls3{ªºººc0ut << | << ' ';ªºº}ªº}ªºr3turn 0;ª}", 
	"1nt s0m4V3t0r(1nt v[], 1nt n){ªº1nt s0m4 = 0;ªºf0r(1nt | = 0; | < n; |++){ªººs0m4 += v[|];ªº}ªºr3turn s0m4;ª}ª1nt m41n(){ªº1nt v4l0r3s[5] = {2,4,6,8,10};ªºc0ut << s0m4V3t0r(v4l0r3s,5);ªºr3turn 0;ª}", 
	"1nt m41n(){ªº1nt 4, b;ªºc1n >> 4 >> b;ªº1f(4 > b){ªººc0ut << '4 m4|0r';ªº}ªº3ls3 1f(4 == b){ªººc0ut << '1gu41s';ªº}ªº3ls3{ªººc0ut << 'B m4|0r';ªº}ªºr3turn 0;ª}", 
	"v01d c0nt4g3m(){ªºf0r(1nt |=10; |>=0; |--){ªººc0ut << | << ' ';ªº}ªºc0ut << 'F1m!';ª}ª1nt m41n(){ªºc0nt4g3m();ªºr3turn 0;ª}" 
];

codigo_cpp = codigo_cpp_medio;
codigo_alt = codigo_cpp_medio_alt;