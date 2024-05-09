import 'dart:io';
void main() {
  print("Ingrese una cadena de caracteres:");
  String? cadena = stdin.readLineSync();
  
  
  if (cadena != null) {
    
    Map<String, int> resultado = contarVocales(cadena);

    print("\nNúmero de apariciones de cada vocal en la cadena:");
    resultado.forEach((vocal, cantidad) {
      print("$vocal: $cantidad");
    });
  } else {
    print("No se ha ingresado ninguna cadena.");
  }
}

Map<String, int> contarVocales(String cadena) {
  Map<String, int> conteo = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };

  cadena = cadena.toLowerCase();

  for (int i = 0; i < cadena.length; i++) {
    String caracter = cadena[i];

    if ('aeiou'.contains(caracter)) {
      conteo[caracter] = (conteo[caracter] ?? 0) + 1;
    }
  }

  return conteo;
}
