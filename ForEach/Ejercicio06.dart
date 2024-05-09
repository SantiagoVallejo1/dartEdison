import 'dart:io';

void main(){

  List<String> asignaturas = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  List<String> repetir = [];

  for(String x in asignaturas){
    print("Ingrese la nota que saco en $x: ");
    double nota = double.parse(stdin.readLineSync()!);

    if(nota < 3.0){
      repetir.add(x);
    }
  }

  print("Materias a repetir: ");

  for(String x in repetir){
    print(x);
  }
}