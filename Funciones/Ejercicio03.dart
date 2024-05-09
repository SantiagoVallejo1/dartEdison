// import 'dart:io';

// void main() {
//   print("ingrese el valor de a: ");
//   int x = int.parse(stdin.readLineSync()!);

//   print("ingrese el valor de b: ");
//   int y = int.parse(stdin.readLineSync()!);

//   intercambio(x, y);
// }

// void intercambio(a, b) {
//   print("Valores originales: a = $a, b = $b");

//   int temp = a;
//   a = b;
//   b = temp;

//   print("Valores intercambiados: a = $a, b = $b");
// }

import 'dart:io';

void main(){

  print("Ingrese el valor de a: ");
  int x = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de b: ");
  int y = int.parse(stdin.readLineSync()!);

  intercambio(x, y);
}

void intercambio(a, b){
  print("Valores originales: a = $a, b = $b");

  int temp = a; 
  a = b;
  b = temp;

  print("Valores intecambiados: a = $a, b = $b");
}


