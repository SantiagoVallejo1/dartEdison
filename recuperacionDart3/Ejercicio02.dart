import 'dart:io';

void main(){

  List<int> numerosGanadores = [];

  print("Por favor ingrese los numeros que tiene de la loteria: ");
  int numeros = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < numeros; i++){
    print("Por favor ingrese el numero del numero ganador ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    numerosGanadores.add(numero);
  }

  numerosGanadores.sort((a, b) => b.compareTo(a));

  print("Los numeros ganadores de la loteria de mayor a menor son: ");

  for(int x in numerosGanadores){
    print(x);
  }
}