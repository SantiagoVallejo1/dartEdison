import 'dart:io';
import 'dart:math';

// Funciones para cada operación
double multiplicacion(double a, double b) {
  return a * b;
}

double suma(double a, double b) {
  return a + b;
}

double resta(double a, double b) {
  return a - b;
}

double division(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    print("Error: División por cero");
    return 0;
  }
}

double potencia(double base, double exponente) {
  return pow(base, exponente).toDouble();
}

double raiz(double num) {
  if (num >= 0) {
    return sqrt(num);
  } else {
    print("Error: No se puede calcular la raíz de un número negativo");
    return 0;
  }
}

void main() {
  double num1, num2, resultado;
  int opcion;

  do {
    // Mostrar el menú
    print("\nSeleccione una operación:");
    print("1. Multiplicación");
    print("2. Suma");
    print("3. Resta");
    print("4. División");
    print("5. Potencia");
    print("6. Raíz");
    print("0. Salir");
    stdout.write("Opción: ");
    opcion = int.parse(stdin.readLineSync()!);

    // Realizar la operación seleccionada
    switch (opcion) {
      case 1:
        stdout.write("Ingrese dos números para multiplicar: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = multiplicacion(num1, num2);
        print("Resultado: $resultado");
        break;
      case 2:
        stdout.write("Ingrese dos números para sumar: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = suma(num1, num2);
        print("Resultado: $resultado");
        break;
      case 3:
        stdout.write("Ingrese dos números para restar (el primero menos el segundo): ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = resta(num1, num2);
        print("Resultado: $resultado");
        break;
      case 4:
        stdout.write("Ingrese el dividendo y el divisor: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = division(num1, num2);
        print("Resultado: $resultado");
        break;
      case 5:
        stdout.write("Ingrese la base y el exponente: ");
        num1 = double.parse(stdin.readLineSync()!);
        num2 = double.parse(stdin.readLineSync()!);
        resultado = potencia(num1, num2);
        print("Resultado: $resultado");
        break;
      case 6:
        stdout.write("Ingrese un número para calcular la raíz cuadrada: ");
        num1 = double.parse(stdin.readLineSync()!);
        resultado = raiz(num1);
        print("Resultado: $resultado");
        break;
      case 0:
        print("Saliendo del programa...");
        break;
      default:
        print("Opción no válida");
    }
  } while (opcion != 0);
}
