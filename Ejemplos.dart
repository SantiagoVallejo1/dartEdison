import 'dart:io';

void main() {
  // var lista = [10,6,7,3,12,9];
  // int entero = 32;
  // double decimal= 3.5;
  // String pepe ="el pepe  ";
  // String sech ="ete seeech";
  // bool bandera = true;
  // dynamic name = "Dart";
  // name = true;
  // name = 25;
  // List numeros = [1,2,3,4,5];
  // print(numeros);

  // numeros.add(6);
  // print(numeros);

  // numeros[0] = 10;

  // numeros.add("Polochond");
  // print(numeros);

  // Set grupo;

  // grupo = Set.from(["Musica" ," Apellidos"]);
  // grupo.add("Musica");
  // print(grupo);

  // grupo.add(2);
  // grupo.remove(2);
  // print(grupo);

  // print(name);
  // print(bandera);
  // print(lista);
  // print(pepe + sech);
  // print("Entero:" + entero.toString() + "Decimal:" + decimal.toString() );

  // Map<int,String> persona = {

  //     1: "edison", 2: "paula", 3: "esteban"};
  //     print(persona);
  //     persona.addAll({4: "nome"});
  // print(persona);

  // print("Digite su name");
  // String name = stdin.readLineSync().toString();
  // print ("hello, $name! \nBienvenido a ADSO!!");

  // print("sumando dos numeros");

  // print("escriba el primer numero");

  // double numero1 =
  // double.parse(stdin.readLineSync().toString());

  // print("escriba el segundo numeros");

  // double  numero2 =
  // double.parse(stdin.readLineSync().toString());

  // print( numero1 + numero2);

  /*print("escriba el numero");
    var year =
    int.parse(stdin.readLineSync().toString());
    if (year >= 2001){
        print("21st century");
    }else if (year >= 1901){
        print("20st century");
    }*/

  /*int vueltas = 1;

    while (vueltas <= 5){
        print("vuelta $vueltas");
        vueltas++;
    }*/

  /*int cuentaReg = 5;

  do {
    print("Tiempo restante: $cuentaReg");
    cuentaReg--;
  } while (cuentaReg != 0);*/

  /*for (int i = 1; i <= 10; i++) {
    print("Numero $i");
  }*/

  /*var lista = ["uno", "dos", "tres"];
  print(lista);
  for (String x in lista) {
    print(x);
  }*/

  /*List<int> numeros = [1,2,3];
  for (int x in numeros) {
    print(x);
  }*/

  // List<int> numeros = [1, 2, 3, 4, 5, 6];
  // numeros.forEach((x){
  //   print("$x");
  // });

  // List<int> numeros = [1, 2, 3, 4, 5, 6];

  // numeros.forEach((x) => print("Accediendo  $x"));

  // Map<String, double> mapa = {
  //   "base": 1.84,
  //   "altura": 1.95,
  //   "area": 2.10,
  //   "volumen": 1.90
  // };

  // print(mapa);
  // mapa.values.forEach((valor) => print("valor del mapa : $valor"));

  // mapa.keys.forEach((key) => print("La clave $key"));

  // mapa.forEach((key, value) => print("La clave $key tiene el valor $value"));

  // Map<int, String> mapa = {
  //   1: "pedro", 2: "paulo", 3: "luis", 4: "brayan"};

  // print(mapa);
  // mapa.values.forEach((valor) => print("valor del mapa : $valor"));

  // mapa.keys.forEach((key) => print("La clave $key"));

  // mapa.forEach((key, value) => print("La clave $key tiene el valor $value"));

  // Set conjunto;
  // conjunto = Set.from(["angel", "luis", "ana", "maria"]);

  // conjunto.forEach((x) => print("El elemento del conjunto : $x"));

  print("ingrese su sabor preferido");

  String sabor = stdin.readLineSync().toString();

  switch (sabor) {
    case "vainilla":
      print("Su helado sera de vainilla");
      break;
    case "chocolate":
      print("Su helado sera de chocolate");
      break;
    case "naranja":
      print("Su helado sera de naranja");
      break;
    default:
      print("No hay helado");
  }
}
