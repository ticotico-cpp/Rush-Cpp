if (global.tempo > 0) {
	var total_seconds = floor(global.tempo / 60); //calculo de tempo pro timer
	var minutos = floor(total_seconds / 60);
	var segundos = total_seconds mod 60;

	var segundos_str = (segundos < 10) ? ("0" + string(segundos)) : string(segundos); //identação pra mostrar 1:09 ao invés de 1:9

	draw_set_color(c_white); //fonte branca
	draw_set_font(f_grande); //fonte grande
	draw_text(x, y, string(minutos) + ":" + segundos_str); //impressão
}