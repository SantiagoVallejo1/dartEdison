import 'dart:io';

void main() {
  // Crear el diccionario
  Map<String, String> monedas = {"Euro": "€", "Dollar": "\$", "Yen": "¥"};

  // Pedir al usuario por una divisa
  print("Ingrese el nombre de una divisa: ");
  String divisa = stdin.readLineSync().toString();

  // Buscar la divisa en el diccionario
  bool encontrada = false;
  for (var key in monedas.keys) {
    if (key == divisa) {
      encontrada = true;
      print("El símbolo de $divisa es ${monedas[key]}");
      break;
    }
  }

  // Mensaje si la divisa no está en el diccionario
  if (encontrada == false) {
    print("La divisa ingresada no está en el diccionario.");
  }
}