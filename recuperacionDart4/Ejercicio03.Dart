class Libro {
  String titulo;
  String categoria;
  String tipo;

  Libro({required this.titulo, required this.categoria, required this.tipo});

  @override
  String toString() {
    return '$titulo ($categoria - $tipo)';
  }
}

class ListaDeLibros {
  List<Libro> _libros = [];

  // Obtener el número de libros en la lista
  int get numeroDeLibros => _libros.length;

  // Insertar un nuevo libro en la posición que le corresponda
  void insertarLibro(Libro libro) {
    int index = _libros.indexWhere((l) => l.titulo.toLowerCase().compareTo(libro.titulo.toLowerCase()) > 0);
    if (index == -1) {
      _libros.add(libro);
    } else {
      _libros.insert(index, libro);
    }
  }

  // Eliminar el libro de una determinada posición
  void eliminarLibro(int posicion) {
    if (posicion >= 0 && posicion < _libros.length) {
      _libros.removeAt(posicion);
    } else {
      print('Posición no válida');
    }
  }

  // Obtener el libro de una determinada posición
  Libro obtenerLibro(int posicion) {
    if (posicion >= 0 && posicion < _libros.length) {
      return _libros[posicion];
    } else {
      throw Exception('Posición no válida');
    }
  }

  // Buscar un libro por una parte de su título (sin distinguir mayúsculas y minúsculas)
  int buscarLibro(String parteDelTitulo) {
    for (int i = 0; i < _libros.length; i++) {
      if (_libros[i].titulo.toLowerCase().contains(parteDelTitulo.toLowerCase())) {
        return i;
      }
    }
    return -1; // Si no se encuentra
  }

  // Visualización de la lista completa de libros
  void mostrarListaDeLibros() {
    for (int i = 0; i < _libros.length; i++) {
      print('${i + 1}. ${_libros[i]}');
    }
  }
}

void main() {
  ListaDeLibros lista = ListaDeLibros();

  // Agregar algunos libros a la lista
  lista.insertarLibro(Libro(titulo: 'Cien Años de Soledad', categoria: 'Novela', tipo: 'Realista'));
  lista.insertarLibro(Libro(titulo: 'El Poder del Ahora', categoria: 'Espiritualidad', tipo: 'Autoayuda'));
  lista.insertarLibro(Libro(titulo: '1984', categoria: 'Novela', tipo: 'Ciencia Ficción'));
  lista.insertarLibro(Libro(titulo: 'El Hombre en Busca de Sentido', categoria: 'Psicología', tipo: 'Autoayuda'));
  lista.insertarLibro(Libro(titulo: 'Don Quijote de la Mancha', categoria: 'Novela', tipo: 'Histórica'));

  print('--- Lista de Libros ---');
  lista.mostrarListaDeLibros();

  print('\nNúmero de libros en la lista: ${lista.numeroDeLibros}');

  // Buscar un libro por una parte de su título
  String parteDelTitulo = 'poder';
  int posicion = lista.buscarLibro(parteDelTitulo);
  if (posicion != -1) {
    print('\nLibro encontrado en la posición: ${posicion + 1}');
    print('Libro: ${lista.obtenerLibro(posicion)}');
  } else {
    print('\nLibro con parte del título "$parteDelTitulo" no encontrado');
  }

  // Eliminar un libro de una determinada posición
  int posicionAEliminar = 2;
  lista.eliminarLibro(posicionAEliminar - 1); // Ajuste para índice de lista

  print('\n--- Lista de Libros después de eliminar en la posición $posicionAEliminar ---');
  lista.mostrarListaDeLibros();
}
