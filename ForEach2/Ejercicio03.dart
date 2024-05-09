import 'dart:io';

void main(){

  Map<String, double> preciosFrutas = {
    "manzana" : 2.5,
    "pera" : 1.5,
    "naranja" : 0.5,
    "uva" : 4.5
  };

  print("Lista de frutas disponibles: manzana, pera, naranja, uva.");
  print("Introduce el nombre de la fruta: ");

  String nombreFruta = stdin.readLineSync().toString();

  print("Introduce la cantidad de kilos: ");
  double kilos = double.parse(stdin.readLineSync()!);

  double? precio = preciosFrutas[nombreFruta];

  if(precio != null){
    double precioTotal = kilos * precio;
    print("El precio de $kilos kilos es de $precioTotal");
  } else {
    print("Lo siento, la fruta $nombreFruta no esta en nuestro catalogo.");
  }
}