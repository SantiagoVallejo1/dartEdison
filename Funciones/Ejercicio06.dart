import 'dart:io';

void main(){
  print("Ingrese un numero: ");
  int num = int.parse(stdin.readLineSync()!);

  determinarNumero(num);
}
void determinarNumero(int num){
  if(num > 0){
    print("El numero $num es positivo.");
  } else if(num < 0){
    print("El numero $num es negativo.");
  } else {
    print("El numero $num es cero.");
  }

  if(num % 2 == 0){
    print("El nuemro $num es par:");
  } else {
    print("El numero $num es impar.");
  }
}