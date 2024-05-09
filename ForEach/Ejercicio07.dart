void main(){

  List<String> abecedario = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "Ñ", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
  List<String> lista = [];

  int posicion = 1; 

  for(String letra in abecedario){
    if(posicion % 3 != 0){
      lista.add(letra);
    }
    posicion++;
  }

  print("Abecedario sin letras en posiciones de multiplos de 3: ");

  for(String letra in lista){
    print(letra);
  }
}