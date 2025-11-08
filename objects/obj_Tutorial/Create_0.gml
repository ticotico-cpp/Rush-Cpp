// abre o vídeo
video_id = video_open("videos/VideoTutorial.mp4");
if (video_id == -1) {
    show_debug_message("Erro: não foi possível abrir videos/tutorial.mp4");
}