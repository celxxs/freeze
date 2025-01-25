if (char_index < string_length(dialogue_text)) {
    typing_timer++;
    if (typing_timer >= typing_speed) {
        // Añade el siguiente carácter al texto mostrado
        current_text += string_char_at(dialogue_text, char_index + 1);
        char_index++;
        typing_timer = 0;
    }
} else {
    // Cuando el texto esté completamente escrito, espera input para cerrar
    if (keyboard_check_pressed(vk_space)) {
        // Destruye el diálogo cuando presionas la barra espaciadora
        instance_destroy();
    }
}
