import 'dart:io';

void main(){
  Map<String, String> diccionario = {
    "amarillo" : "yellow",
    "azul" : "blue",
    "rojo" : "red",
    "verde" : "green"
  };

  // print("Ingrese una palabra en español del mapa: ");
  // String clave = stdin.readLineSync().toString();

  // print("Ingrese la palabra en ingles que corresponde: ");
  // diccionario[clave] = stdin.readLineSync().toString();

  print("Ingrese la palabra que quiere traducir: ");
  String palabra = stdin.readLineSync().toString();

  diccionario.forEach((espanol, ingles) {
    if(diccionario[palabra] == diccionario[espanol]){
      print("La traduccion de $espanol es $ingles");
    }
  });
}