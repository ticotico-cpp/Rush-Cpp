// Inherit the parent event
event_inherited();

codigo_cpp_dificil = [
    "int fatorial(int n){ªºif(n <= 1) return 1;ªºreturn n * fatorial(n - 1);ª}ªint main(){ªºfor(int i = 1; i <= 10; i++){ªººcout << fatorial(i) << ' ';ªº}ªºreturn 0;ª}",
    "vector<int> numeros = {1,2,3,4,5};ªfor(int i = 0; i < numeros.size(); i++){ªºif(numeros[i] % 2 == 0){ªººcout << numeros[i] << ' par';ªº}ªºelse{ªººcout << numeros[i] << ' impar';ªº}ª}",
    "int somaPositivos(vector<int> v){ªºint soma = 0;ªºfor(auto x : v){ªººif(x > 0) soma += x;ªº}ªºreturn soma;ª}ªint main(){ªºvector<int> valores = {-3,5,7,-1,4};ªºcout << somaPositivos(valores);ªºreturn 0;ª}",
    "bool primo(int n){ªºif(n < 2) return false;ªºfor(int i=2; i*i<=n; i++){ªººif(n % i == 0) return false;ªº}ªºreturn true;ª}ªint main(){ªºfor(int i=1; i<=20; i++){ªººif(primo(i)) cout << i << ' ';ªº}ªºreturn 0;ª}"
];

codigo_cpp_dificil_alt = [ 
	"1nt f4tor14l(1nt n){ªº1f(n <= 1) r3turn 1;ªºr3turn n * f4tor14l(n - 1);ª}ª1nt m41n(){ªºf0r(1nt | = 1; | <= 10; |++){ªººc0ut << f4tor14l(|) << ' ';ªº}ªºr3turn 0;ª}", 
	"v3ct0r<1nt> num3r0s = {1,2,3,4,5};ªf0r(1nt | = 0; | < num3r0s.s1z3(); |++){ªº1f(num3r0s[|] % 2 == 0){ªººc0ut << num3r0s[|] << ' p4r';ªº}ªº3ls3{ªººc0ut << num3r0s[|] << ' 1mp4r';ªº}ª}", 
	"1nt s0m4P0s1t1v0s(v3ct0r<1nt> v){ªº1nt s0m4 = 0;ªºf0r(4ut0 > : v){ªºº1f(> > 0) s0m4 += >;ªº}ªºr3turn s0m4;ª}ª1nt m41n(){ªºv3ct0r<1nt> v4l0r3s = {-3,5,7,-1,4};ªºc0ut << s0m4P0s1t1v0s(v4l0r3s);ªºr3turn 0;ª}", 
	"b00l pr1m0(1nt n){ªº1f(n < 2) r3turn f4ls3;ªºf0r(1nt |=2; |*|<=n; |++){ªºº1f(n % | == 0) r3turn f4ls3;ªº}ªºr3turn tru3;ª}ª1nt m41n(){ªºf0r(1nt |=1; |<=20; |++){ªºº1f(pr1m0(|)) c0ut << | << ' ';ªº}ªºr3turn 0;ª}" 
];
	

codigo_cpp = codigo_cpp_dificil;
codigo_alt = codigo_cpp_dificil_alt;


global.tempo*=0.8;