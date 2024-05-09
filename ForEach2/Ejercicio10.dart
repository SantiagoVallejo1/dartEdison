import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> baseDatosClientes = {};

  while (true) {
    print("\nMenú:");
    print("1. Añadir cliente");
    print("2. Eliminar cliente");
    print("3. Mostrar cliente");
    print("4. Listar todos los clientes");
    print("5. Listar clientes preferentes");
    print("6. Terminar");
    stdout.write("Selecciona una opción: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        anadirCliente(baseDatosClientes);
        break;
      case '2':
        eliminarCliente(baseDatosClientes);
        break;
      case '3':
        mostrarCliente(baseDatosClientes);
        break;
      case '4':
        listarClientes(baseDatosClientes);
        break;
      case '5':
        listarClientesPreferentes(baseDatosClientes);
        break;
      case '6':
        print("¡Hasta luego!");
        return;
      default:
        print("Opción no válida. Por favor, selecciona una opción del menú.");
    }
  }
}

void anadirCliente(Map<String, Map<String, dynamic>> baseDatos) {
  print("\nAñadir cliente:");
  String nif = pedirDato("NIF del cliente");
  String nombre = pedirDato("Nombre del cliente");
  String direccion = pedirDato("Dirección del cliente");
  String telefono = pedirDato("Teléfono del cliente");
  String correo = pedirDato("Correo electrónico del cliente");
  bool preferente = pedirDato("¿Es cliente preferente? (Sí/No)").toLowerCase() == 'sí';

  baseDatos[nif] = {
    "nombre": nombre,
    "direccion": direccion,
    "telefono": telefono,
    "correo": correo,
    "preferente": preferente,
  };

  print("Cliente añadido correctamente.");
}

void eliminarCliente(Map<String, Map<String, dynamic>> baseDatos) {
  print("\nEliminar cliente:");
  String nif = pedirDato("NIF del cliente que quieres eliminar");
  
  if (baseDatos.containsKey(nif)) {
    baseDatos.remove(nif);
    print("Cliente eliminado correctamente.");
  } else {
    print("El cliente con ese NIF no existe en la base de datos.");
  }
}

void mostrarCliente(Map<String, Map<String, dynamic>> baseDatos) {
  print("\nMostrar cliente:");
  String nif = pedirDato("NIF del cliente que quieres mostrar");
  
  if (baseDatos.containsKey(nif)) {
    print("Datos del cliente:");
    print("NIF: $nif");
    baseDatos[nif]!.forEach((key, value) {
      print("$key: $value");
    });
  } else {
    print("El cliente con ese NIF no existe en la base de datos.");
  }
}

void listarClientes(Map<String, Map<String, dynamic>> baseDatos) {
  print("\nLista de todos los clientes:");
  for (var cliente in baseDatos.entries) {
    print("NIF: ${cliente.key}, Nombre: ${cliente.value['nombre']}");
  }
}

void listarClientesPreferentes(Map<String, Map<String, dynamic>> baseDatos) {
  print("\nLista de clientes preferentes:");
  for (var cliente in baseDatos.entries) {
    if (cliente.value['preferente']) {
      print("NIF: ${cliente.key}, Nombre: ${cliente.value['nombre']}");
    }
  }
}

String pedirDato(String mensaje) {
  stdout.write("$mensaje: ");
  return stdin.readLineSync()!;
}
