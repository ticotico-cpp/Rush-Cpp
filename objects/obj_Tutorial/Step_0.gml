// avança pro próximo room ao apertar TAB
if (keyboard_check_pressed(vk_tab)) {
    // Fecha o vídeo e troca de room
    video_close();
    room_goto_next();
}