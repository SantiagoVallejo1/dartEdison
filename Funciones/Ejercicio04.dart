import 'dart:io';

void main() {
  print("Ingrese el numero: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("Ingrese la posicion: ");
  int posicion = int.parse(stdin.readLineSync()!);

  int digito = obtenerNumero(numero, posicion);

  if (digito != -1) {
    print("El dígito en la posición $posicion es $digito");
  }
}

int obtenerNumero(int numero, int posicion) {
  String numeroStr = numero.toString(); 
  int longitud = numeroStr.length;

  if (posicion >= 1 && posicion <= longitud) {
    
    int indice = longitud - posicion; 
    return int.parse(
        numeroStr[indice]); 
  } else {
    
    print("La posición $posicion está fuera del rango para el número $numero");
    return -1; 
  }
}
