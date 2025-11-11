if (!titulo_finalizado) {
    contador_titulo += 1;
    if (contador_titulo >= velocidade_titulo) {
        contador_titulo = 0;
        indice_titulo += 1;
        titulo_mostrado = string_copy(titulo_completo, 1, indice_titulo);
        if (indice_titulo >= string_length(titulo_completo)) {
            titulo_finalizado = true;
        }
    }
}