import 'dart:io';

void main(){
  print("Ingresa una fecha en formato: dd/mm/aaaa: ");
  String fecha = stdin.readLineSync().toString();

List<String> partes = fecha.split("/");
int dia = int.parse(partes[0]);
int mes = int.parse(partes[1]);
int year = int.parse(partes[2]);


  List<String> nombreMeses = ["enero", "febrero", "marzo", "abril", "mayo", "junio", 
  "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"];

  print("La fecha es: $dia de ${nombreMeses[mes - 1]} de $year");
}