import "dart:io";
void main() {
    print("Digite el valor del cateto 1");
    double cateto1 = 
    double.parse(stdin.readLineSync().toString());

    print("Digite el valor del cateto 2");
    double cateto2 = 
    double.parse(stdin.readLineSync().toString());

    var hipotenusa = cateto2*cateto2 + cateto1*cateto1;
    

    print("El valor de lhipotenusa es de : $hipotenusa");
}