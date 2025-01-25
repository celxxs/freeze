if (visible) {
    // Tamaño del cuadro de diálogo (aproximado al de Undertale)
    var padding = 20;  // Espacio entre el texto y los bordes del cuadro

    // Tamaño del texto (ancho y alto) usando la función `string_width` y `string_height`
    var text_width = string_width(current_text);
    var text_height = string_height(current_text);

    // Calculamos el tamaño del cuadro de diálogo en función del texto
    var width = text_width + 2 * padding;  // Ancho: texto + márgenes
    var height = text_height + 2 * padding; // Alto: texto + márgenes

    // Posición para que el cuadro esté centrado en el eje X y en la parte inferior en el eje Y
    var center_x = room_width / 2; // Centrado en el eje X
    var center_y = room_height - height / 2 - 10; // En la parte inferior, con un pequeño margen

    // Escalar el sprite al tamaño deseado
    var scale_x = width / sprite_width;  // Escala en el eje X
    var scale_y = height / sprite_height; // Escala en el eje Y

    // Dibuja el sprite escalado (cuadro de diálogo) centrado en la parte inferior
    draw_sprite_ext(sprite_index, image_index, center_x, center_y, scale_x, scale_y, 0, c_white, 1);

    // Dibuja el texto dentro del cuadro de diálogo (centrado dentro del cuadro)
    draw_set_font(fuente_nolmal); // Fuente del texto
    draw_set_color(c_white); // Color del texto

    // Ajusta la posición del texto centrado dentro del cuadro (mismos valores que para el sprite)
    draw_text(center_x - width / 2 + padding, center_y - height / 2 + padding, current_text); // Ajusta el texto con márgenes
}
