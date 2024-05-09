void main(){

  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print("Numeros en orden inverso: ");

  for(int x in numeros.reversed){
    print("$x, ");
  }
}