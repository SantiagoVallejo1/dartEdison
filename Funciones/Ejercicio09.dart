import 'dart:io';
import 'dart:math';


double suma(double a, double b){
  return a + b;
}

double resta(double a, double b){
  return a - b;
}

double multiplicacion(double a, double b){
  return a * b;
}

double division(double a, double b){
  if(b != 0){
    return a / b;
  } else {
    print("Error. Division por cero");
    return 0;
  }
}

double potencia(double base, double exponente){
  return pow(base, exponente).toDouble();
}

double raiz(double num){
  if(num >= 0){
    return sqrt(num);
  } else {
    print("Error.");
    return 0;
  }
}

void main(){

  int opcion;
  double num1, num2, resultado;

  do {

    print("Seleccione una operaccion: ");
    print("1. Suma");
    print("2. Resta");
    print("3. Multiplicacion");
    print("4. Division");
    print("5. Potencia");
    print("6. Raiz");
    print("0. Salir");
    
    print("Por favor ingrese la opcion: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch(opcion){

      case 1: 
        print("Ingrese dos numeros para sumar: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = suma(num1, num2);
        print("Resultado: $resultado");
        break;

      case 2: 
        print("Ingrese dos numeros para restar: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = resta(num1, num2);
        print("Resultado: $resultado");
        break;

      case 3: 
        print("Ingrese dos numeros para multiplicar: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = multiplicacion(num1, num2);
        print("Resultado: $resultado");
        break;

      case 4: 
        print("Ingrese dos numeros para dividir: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = division(num1, num2);
        print("Resultado: $resultado");
        break;

      case 5: 
        print("Ingrese dos numeros para su potencia: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = potencia(num1, num2);
        print("Resultado: $resultado");
        break;

      case 6: 
        print("Ingrese dos numeros para su raiz: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = raiz(num1);
        print("Resultado: $resultado");
        break;

      case 0:
        print("Saliendo del programa");
        break;
      default:
      print("Opcion no valida");
    }

  } while (opcion != 0);
}