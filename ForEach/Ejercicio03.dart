import 'dart:io';

void main(){

  List<String> asignaturas = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  List<double> notas = [];

  for(String x in asignaturas){
    print("Por favor ingrese la nota que saco en la materia $x: ");
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  for(int i = 0; i <= asignaturas.length; i++){
    print("En la materia ${asignaturas[i]} has sacado ${notas[i]}");
  }
}