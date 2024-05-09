import 'dart:io';

void main() {
  Map<String, double> cestaCompra = {};

  while (true) {
    stdout.write("Introduce el artículo (o 'terminar' para finalizar): ");
    String articulo = stdin.readLineSync()!;
    
    if (articulo.toLowerCase() == "terminar") {
      break;
    }

    stdout.write("Introduce el precio del artículo: ");
    double precio = double.parse(stdin.readLineSync()!);

    cestaCompra[articulo] = precio;
  }

  if (cestaCompra.isEmpty) {
    print("La cesta de la compra está vacía.");
  } else {
    double total = 0;
    print("\nLista de la compra:");
    for (var articulo in cestaCompra.keys) {
      print("$articulo: ${cestaCompra[articulo]}");
      total += cestaCompra[articulo]!;
    }
    print("Coste total: $total");
  }
}
