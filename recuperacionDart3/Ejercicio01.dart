import 'dart:io';

void main() {
  Map<int, Map<String, dynamic>> aprendices = {};

  while (true) {

    print("Seleccione una opción:");
    print("1. Registrar aprendiz");
    print("2. Consultar nota de un aprendiz");
    print("3. Mostrar mayor nota");
    print("4. Mostrar menor nota");
    print("5. Mostrar promedio de notas");
    print("6. Mostrar quiénes aprobaron");
    print("7. Mostrar quiénes reprobaron");
    print("8. Salir");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        registrarAprendiz(aprendices);
        break;
      case 2:
        consultarNota(aprendices);
        break;
      case 3:
        mostrarMayorNota(aprendices);
        break;
      case 4:
        mostrarMenorNota(aprendices);
        break;
      case 5:
        mostrarPromedioNotas(aprendices);
        break;
      case 6:
        mostrarAprobados(aprendices);
        break;
      case 7:
        mostrarReprobados(aprendices);
        break;
      case 8:
        print("Saliendo del programa...");
        return;
      default:
        print("Opción inválida. Por favor, seleccione una opción válida.");
    }
  }
}

void registrarAprendiz(Map<int, Map<String, dynamic>> mapa) {
  print("Ingrese el número de documento del aprendiz:");
  var documento = int.parse(stdin.readLineSync()!);

  print("Ingrese el nombre del aprendiz:");
  var nombre = stdin.readLineSync()!;

  print("Ingrese la nota del aprendiz:");
  var nota = double.parse(stdin.readLineSync()!);

  mapa[documento] = {"nombre": nombre, "nota": nota};
  print("Aprendiz registrado exitosamente.");
}

void consultarNota(Map<int, Map<String, dynamic>> mapa) {
  print("Ingrese el número de documento del aprendiz:");
  var documento = int.parse(stdin.readLineSync()!);

  if (mapa.containsKey(documento)) {
    print("La nota del aprendiz ${mapa[documento]!['nombre']} es: ${mapa[documento]!['nota']}");
  } else {
    print("El número de documento ingresado no corresponde a ningún aprendiz.");
  }
}

void mostrarMayorNota(Map<int, Map<String, dynamic>> mapa) {
  var mayorNota = mapa.values.map((aprendiz) => aprendiz["nota"]).reduce((a, b) => a > b ? a : b);
  print("La mayor nota es: $mayorNota");
}

void mostrarMenorNota(Map<int, Map<String, dynamic>> mapa) {
  var menorNota = mapa.values.map((aprendiz) => aprendiz["nota"]).reduce((a, b) => a < b ? a : b);
  print("La menor nota es: $menorNota");
}

void mostrarPromedioNotas(Map<int, Map<String, dynamic>> mapa) {
  var totalNotas = mapa.values.map((aprendiz) => aprendiz["nota"]).toList();
  var promedio = totalNotas.reduce((a, b) => a + b) / totalNotas.length;
  print("El promedio de notas es: $promedio");
}

void mostrarAprobados(Map<int, Map<String, dynamic>> mapa) {
  var aprobados = mapa.entries.where((aprendiz) => aprendiz.value["nota"] >= 3.0);
  if (aprobados.isNotEmpty) {
    print("Aprobados:");
    for (var aprendiz in aprobados) {
      print("${aprendiz.value['nombre']}: ${aprendiz.value['nota']}");
    }
  } else {
    print("No hay aprendices aprobados.");
  }
}

void mostrarReprobados(Map<int, Map<String, dynamic>> mapa) {
  var reprobados = mapa.entries.where((aprendiz) => aprendiz.value["nota"] < 3.0);
  if (reprobados.isNotEmpty) {
    print("Reprobados:");
    for (var aprendiz in reprobados) {
      print("${aprendiz.value['nombre']}: ${aprendiz.value['nota']}");
    }
  } else {
    print("No hay aprendices reprobados.");
  }
}
