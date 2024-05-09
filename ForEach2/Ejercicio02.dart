import 'dart:io';

void main(){

  Map<String, dynamic> infoUsuario = {};

  print("Por favor ingrese su nombre: ");
  infoUsuario["nombre"] = stdin.readLineSync();

  print("Por favor ingrese su edad: ");
  infoUsuario["edad"] = stdin.readLineSync();

  print("Por favor ingrese su direccion: ");
  infoUsuario["direccion"] = stdin.readLineSync();

  print("Por favor ingrese su telefono: ");
  infoUsuario["telefono"] = stdin.readLineSync();

  print("\nInfotmacion del usuario: ");

  for(var key in infoUsuario.keys){
    print("$key: ${infoUsuario[key]}");
  }
}