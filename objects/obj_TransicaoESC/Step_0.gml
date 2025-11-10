// cria a transição entre room1 e room2
if (keyboard_check_pressed(vk_escape)) {
    if (room == Room1) {
        room_goto(Room2);
    } else if (room == Room2) {
        room_goto(Room1);
    }
}