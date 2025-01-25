// Verificar si Damon está cerca de la cerveza
if (place_meeting(x, y, cerveza)) {
    // Si Damon presiona la tecla E para interactuar
    if (keyboard_check_pressed(ord("E"))) {
        // Crear el objeto de diálogo en la capa "Instances" o "Default"
        instance_create_layer(x, y - 100, "Instances", obj_dialogue);

        // Destruir la cerveza
        instance_destroy(instance_place(x, y, cerveza));
    }
}