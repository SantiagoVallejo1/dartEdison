import 'dart:io';

void main() {

  Map<String, dynamic> informacionPersona = {};

  print("Por favor ingrese la informacion de la persona: ");

  List<String>  datos = ["nombre", "edad", "sexo", "telefono", "correo"];

  for(var dato in datos){
    print("Introduce $dato: ");
    String valor = stdin.readLineSync().toString();
    informacionPersona[dato] = valor;
  }

  print("Contenido actual del diccionario: ");
  for(var key in informacionPersona.keys){
    print("$key: ${informacionPersona[key]}");
  }
}