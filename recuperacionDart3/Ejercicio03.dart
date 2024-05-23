import 'dart:io';

void main() {
  Map<String, String> usuarios = {};

  while (true) {
    print("\nMenu de opciones:");
    print("1. Guardar usuario");
    print("2. Mostrar todos los usuarios");
    print("3. Buscar usuario por cédula");
    print("4. Modificar usuario");
    print("5. Eliminar usuario");
    print("6. Salir");

    print("\nIngrese una opcion: ");
    var opcion = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (opcion) {
      case 1:
        guardarUsuario(usuarios);
        break;
      case 2:
        mostrarUsuarios(usuarios);
        break;
      case 3:
        buscarUsuario(usuarios);
        break;
      case 4:
        modificarUsuario(usuarios);
        break;
      case 5:
        eliminarUsuario(usuarios);
        break;
      case 6:
        print("Saliendo del programa...");
        return;
      default:
        print("Opción inválida. Por favor, seleccione una opción válida.");
    }
  }
}

void guardarUsuario(Map<String, String> usuarios) {
  print("Ingrese el número de cédula del usuario:");
  var cedula = stdin.readLineSync()!;
  
  print("Ingrese el nombre del usuario:");
  var nombre = stdin.readLineSync()!;
  
  usuarios[cedula] = nombre;
  print("Usuario guardado exitosamente.");
}

void mostrarUsuarios(Map<String, String> usuarios) {
  if (usuarios.isEmpty) {
    print("No hay usuarios guardados.");
  } else {
    print("Listado de usuarios:");
    usuarios.forEach((cedula, nombre) {
      print("Cédula: $cedula, Nombre: $nombre");
    });
  }
}

void buscarUsuario(Map<String, String> usuarios) {
  print("Ingrese la cédula del usuario a buscar:");
  var cedula = stdin.readLineSync()!;
  
  if (usuarios.containsKey(cedula)) {
    print("Nombre del usuario con cédula $cedula: ${usuarios[cedula]}");
  } else {
    print("Usuario no encontrado.");
  }
}

void modificarUsuario(Map<String, String> usuarios) {
  print("Ingrese la cédula del usuario a modificar:");
  var cedula = stdin.readLineSync()!;
  
  if (usuarios.containsKey(cedula)) {
    print("Ingrese el nuevo nombre del usuario:");
    var nuevoNombre = stdin.readLineSync()!;
    usuarios[cedula] = nuevoNombre;
    print("Usuario modificado exitosamente.");
  } else {
    print("Usuario no encontrado.");
  }
}

void eliminarUsuario(Map<String, String> usuarios) {
  print("Ingrese la cédula del usuario a eliminar:");
  var cedula = stdin.readLineSync()!;
  
  if (usuarios.containsKey(cedula)) {
    usuarios.remove(cedula);
    print("Usuario eliminado exitosamente.");
  } else {
    print("Usuario no encontrado.");
  }
}
