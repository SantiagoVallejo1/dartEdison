import 'dart:io';

void main() {
  print("Ingrese el primer numero: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero: ");
  int m = int.parse(stdin.readLineSync()!);

  print("Cubos de los números entre $n y $m:");

  for (int i = n; i <= m; i++) {
    int cubo = calcularCubo(i); 
    print("El cubo de $i es $cubo");
  }
}

int calcularCubo(int numero) {
  return numero * numero * numero; 
}
