// import 'dart:io';

// void main() {
//   print("Ingrese el numero hasta donde sumar");
//   int num = int.parse(stdin.readLineSync()!);

//   print("El resultado de la suma hasta: $num es igual a: "+sumar(num).toString());

// }

// int sumar(int num) {
//   int acumulador = 0;
    
//   for (int i = 1; i <= num; i++) {
//     if(i % 2 != 0){
//       acumulador = (acumulador + i);
//     }
//   }
//   return acumulador;
// }

import 'dart:io';
void main(){

  print("Ingrese el numero hasta donde sumar: ");
  int num = int.parse(stdin.readLineSync()!);

  print("El resultado de la suma hasta: $num es igual a: "+suma(num).toString());
}

int suma(int num){
    int acumulador = 0; 

    for(int i = 1; i <= num; i++){
      if(i % 2 != 0){
        acumulador = (acumulador + i);
      }
    }
    return acumulador;
  }