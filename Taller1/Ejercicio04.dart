import "dart:io";
void main() {
    print("Digite el valor de la hora");
    double hora = 
    double.parse(stdin.readLineSync().toString());

    print("Digite las horas trabajadas");
    double horas_trabajadas = 
    double.parse(stdin.readLineSync().toString());

    var pago = horas_trabajadas * hora;
    

    print("Su sueldo sera de : $pago");
}