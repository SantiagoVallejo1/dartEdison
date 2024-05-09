void main(){

  Map<String, int> CreditosMaterias = {"Matematicas" : 6, "Fisica" : 4, "Quimica" : 5, };

  for(var materia in CreditosMaterias.keys){
    int creditos = CreditosMaterias[materia]!;
    print("$materia tiene $creditos creditos");
  }

  int totalCreditos = 0;
  for(var creditos in CreditosMaterias.values){
    totalCreditos += creditos;
  }

  print("El total de creditos del curso es de: $totalCreditos");

}