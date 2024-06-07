import 'dart:io';

class Pelicula {
  String titulo;
  String genero;
  String paisProduccion;

  Pelicula(this.titulo, this.genero, this.paisProduccion);
}

class ServicioStreaming {
  List<Pelicula> peliculas = [];

  void agregarPelicula() {
    print("Ingrese el nombre de la pelicula: ");
    String titulo = stdin.readLineSync()!;
    print("Ingrese el genero de la pelicula: ");
    String genero = stdin.readLineSync()!;
    print("Ingrese el pais de la produccion de la pelicula: ");
    String paisProduccion = stdin.readLineSync()!;

    Pelicula nuevaPelicula = Pelicula(titulo, genero, paisProduccion);
    peliculas.add(nuevaPelicula);
    print("La pelicula se añadio corectamente.");
  }

  void mostrarPeliculas() {
    if (peliculas.isEmpty) {
      print("No hay peliculas disponibles.");
    } else {
      print("Lista de peliculas: ");
      for (var i = 0; i < peliculas.length; i++) {
        print("Pelicula ${i + 1}:");
        print("Título: ${peliculas[i].titulo}");
        print("Género: ${peliculas[i].genero}");
        print("País de producción: ${peliculas[i].paisProduccion}");
      }
    }
  }

  void actualizarPelicula() {
    if (peliculas.isEmpty) {
      print("No hay peliculas para actualizar.");
      return;
    }

    mostrarPeliculas();
    print("Ingrese el numero de la pelicula a actualizar: ");
    int index = int.parse(stdin.readLineSync()!) - 1;

    if (index < 0 || index >= peliculas.length) {
      print("Numero de pelicula invalido.");
      return;
    }

    print("Ingrese el nuevo título de la película: ");
    peliculas[index].titulo = stdin.readLineSync()!;
    print("Ingrese el nuevo género de la película: ");
    peliculas[index].genero = stdin.readLineSync()!;
    print("Ingrese el nuevo país de producción de la película: ");
    peliculas[index].paisProduccion = stdin.readLineSync()!;

    print("La película ha sido actualizada con éxito.");
  }

  void eliminarPelicula() {
    if (peliculas.isEmpty) {
      print("No hay películas para eliminar.");
      return;
    }

    mostrarPeliculas();
    print("Ingrese el número de la película a eliminar: ");
    int index = int.parse(stdin.readLineSync()!) - 1;

    if (index < 0 || index >= peliculas.length) {
      print("Número de película inválido.");
      return;
    }

    peliculas.removeAt(index);
    print("La película ha sido eliminada con éxito.");
  }
}

void main() {
  var servicio = ServicioStreaming();
  bool salir = false;

  while (!salir) {
    print("\n==== Menú ====");
    print("1. Agregar película");
    print("2. Mostrar películas");
    print("3. Actualizar película");
    print("4. Eliminar película");
    print("5. Salir");
    print("Seleccione una opción: ");

    String opcion = stdin.readLineSync()!;
    switch (opcion) {
      case "1":
        servicio.agregarPelicula();
        break;
      case "2":
        servicio.mostrarPeliculas();
        break;
      case "3":
        servicio.actualizarPelicula();
        break;
      case "4":
        servicio.eliminarPelicula();
        break;
      case "5":
        salir = true;
        print("¡Hasta luego!");
        break;
      default:
        print("Opción no válida. Por favor, seleccione una opción válida.");
    }
  }
}