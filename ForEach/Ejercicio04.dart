import 'dart:io';

void main(){

  List<int> numerosGanadores = [];

  for(int i = 0; i < 6; i++){
    print("Por favor ingrese el numero del numero ganador ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    numerosGanadores.add(numero);
  }

  numerosGanadores.sort();

  print("Los numeros ganadores de la loteria de menor a mayor son: ");

  for(int x in numerosGanadores){
    print(x);
  }
}